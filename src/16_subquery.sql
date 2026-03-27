SELECT *
FROM (
        SELECT *
        FROM transacoes as t1
        WHERE t1.DtCriacao >= '2025-01-01'
    )
WHERE DtCriacao < '2025-07-01'