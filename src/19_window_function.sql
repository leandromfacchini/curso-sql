WITH tb_cliente_dia AS(
    SELECT idCliente,
        SUBSTRING(DtCriacao, 1, 10) AS dtDia,
        COUNT(DISTINCT(IdTransacao)) AS qtdeTransacao
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
        AND DtCriacao < '2025-08-30'
    GROUP BY idCliente,
        dtDia
),
tb_lag AS (
    SELECT *,
        SUM(qtdeTransacao) OVER (
            PARTITION BY idCliente
            ORDER BY dtDia
        ) AS acum,
        LAG(qtdeTransacao) OVER(
            PARTITION BY idCliente
            ORDER BY dtDia
        ) AS lagTransacao
    FROM tb_cliente_dia
)
SELECT *,
    1.* qtdeTransacao / lagTransacao
FROM tb_lag