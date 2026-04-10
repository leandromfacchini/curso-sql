-- 13. Qual o dia com maior engajamento de cada aluno que iniciou o curso no dia 01?
WITH alunos_dia_01 AS (
    SELECT DISTINCT(IdCliente)
    FROM transacoes
    WHERE SUBSTRING(DtCriacao, 1, 10) = '2025-08-25'
),
tb_dia_cliente AS(
    SELECT t1.idCliente,
        SUBSTRING(t2.DtCriacao, 1, 10) AS dtDia,
        COUNT(*) AS qtdeInteracoes
    FROM alunos_dia_01 AS t1
        LEFT JOIN transacoes AS t2 ON t1.idCliente = t2.idCliente
        AND t2.DtCriacao >= '2025-08-25'
        AND t2.DtCriacao < '2025-08-30'
    GROUP BY t1.idCliente,
        dtDia
    ORDER BY t1.idCliente,
        dtDia
),
max_inter AS(
    SELECT idCliente,
        MAX(qtdeInteracoes) AS maxInter
    FROM tb_dia_cliente
    GROUP BY idCliente
)
SELECT t1.idCliente,
    MAX(t2.dtDia) AS maxDia
FROM max_inter AS t1
    LEFT JOIN tb_dia_cliente t2 ON t1.idCliente = t2.idCliente
    AND t1.maxInter = t2.qtdeInteracoes
GROUP BY t1.idCliente
ORDER BY t1.idCliente