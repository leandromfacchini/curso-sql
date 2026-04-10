WITH cliente_dia AS(
    SELECT DISTINCT(idCliente),
        SUBSTRING(DtCriacao, 1, 10) AS dtDia
    FROM transacoes
    WHERE SUBSTRING(DtCriacao, 1, 4) = '2025'
    ORDER BY idCliente,
        dtDia
),
tb_lag AS (
    SELECT *,
        LAG(dtDia) OVER (
            PARTITION BY idCliente
            ORDER BY dtDia
        ) AS lagDia
    FROM cliente_dia
),
tb_diff_dt AS(
    SELECT *,
        JULIANDAY(dtDia) - JULIANDAY(lagDia) AS dtDiff
    FROM tb_lag
),
avg_cliente AS (
    SELECT idCliente,
        AVG(dtDiff) AS avgDia
    FROM tb_diff_dt
    GROUP BY idCliente
)
SELECT AVG(avgDia)
FROM avg_cliente