WITH tb_sumario_dias AS (
    SELECT SUBSTRING(DtCriacao, 1, 10) AS dtDia,
        COUNT(DISTINCT(IdTransacao)) AS qtdeTransacao
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
        AND DtCriacao < '2025-08-30'
    GROUP BY dtDia
)
SELECT *,
    SUM(qtdeTransacao) OVER (
        PARTITION BY 1
        ORDER BY dtDia
    ) AS qtdeTransacaoAcumulada
FROM tb_sumario_dias