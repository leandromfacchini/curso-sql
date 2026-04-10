-- 10. Como foi a curva de Churn do Curso de SQL?
/* SELECT SUBSTRING(DtCriacao, 1, 10) AS dtDia,
 COUNT(DISTINCT(idCliente)) AS qtdeCliente
 FROM transacoes
 WHERE DtCriacao >= '2025-08-25'
 AND DtCriacao < '2025-08-30'
 GROUP BY dtDia */
WITH tb_clientes_d1 AS (
    SELECT DISTINCT(idCliente)
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
        AND DtCriacao < '2025-08-26'
)
SELECT SUBSTRING(t2.DtCriacao, 1, 10) AS dtDia,
    COUNT(DISTINCT(t1.idCliente)) AS qtdeCliente,
    1.* COUNT(DISTINCT(t1.idCliente)) / (
        SELECT COUNT(*)
        FROM tb_clientes_d1
    ) AS percentRetencao,
    1 -  1.* COUNT(DISTINCT(t1.idCliente)) / (
        SELECT COUNT(*)
        FROM tb_clientes_d1
    ) AS pctChurn
FROM tb_clientes_d1 AS t1
    LEFT JOIN transacoes AS t2 ON t1.idCliente = t2.idCliente
WHERE t2.DtCriacao >= '2025-08-25'
    AND t2.DtCriacao < '2025-08-30'
GROUP BY dtDia