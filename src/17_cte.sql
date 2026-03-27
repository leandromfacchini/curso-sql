--CTE: Common Table Expression
-- SELECT COUNT(DISTINCT(t1.idCliente))
-- FROM transacoes AS t1
-- WHERE t1.idCliente IN(
--         SELECT DISTINCT(idCliente)
--         FROM transacoes
--         WHERE SUBSTRING(DtCriacao, 1, 10) = '2025-08-25'
--     )
--     AND SUBSTRING(t1.DtCriacao, 1, 10) = '2025-08-29'
WITH tb_cliente_primeiro_dia AS (
    SELECT DISTINCT(idCliente)
    FROM transacoes
    WHERE SUBSTRING(DtCriacao, 1, 10) = '2025-08-25'
),
tb_cliente_ultimo_dia AS(
    SELECT DISTINCT(idCliente)
    FROM transacoes
    WHERE SUBSTRING(DtCriacao, 1, 10) = '2025-08-29'
),
tb_join AS(
    SELECT t1.idCliente AS primeiroCliente,
        t2.idCliente AS ultimoCliente
    FROM tb_cliente_primeiro_dia AS t1
        LEFT JOIN tb_cliente_ultimo_dia AS t2 ON t1.idCliente = t2.idCliente
)
SELECT COUNT(primeiroCliente),
    COUNT(ultimoCliente),
    1.* COUNT(ultimoCliente) / COUNT(primeiroCliente)
FROM tb_join