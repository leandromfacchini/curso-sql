-- Saldo de pontos acumulado de cada usuário
WITH tb_cliente_dia AS (
    SELECT idCliente,
        SUBSTRING(DtCriacao, 1, 10) AS dtDia,
        SUM(QtdePontos) AS totalPontos,
        SUM(
            CASE
                WHEN QtdePontos > 0 THEN QtdePontos
                ELSE 0
            END
        ) AS pontosPos
    FROM transacoes
    GROUP BY IdCliente,
        dtDia
)
SELECT *,
    SUM(totalPontos) OVER (
        PARTITION BY idCliente
        ORDER BY dtDia
    ) AS saldoPontos,
    SUM(pontosPos) OVER (
        PARTITION BY idCliente
        ORDER BY dtDia
    ) AS totalPontosPos
FROM tb_cliente_dia