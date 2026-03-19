-- Clientes mais antigos, tem mais frequência de transação?
SELECT t1.idCliente,
    CAST(
        JULIANDAY('NOW') - JULIANDAY(SUBSTRING(t1.DtCriacao, 1, 19)) AS INTEGER
    ) AS idadeBase,
    COUNT(t2.IdTransacao) AS qtdeTransacoes
FROM clientes AS t1
    LEFT JOIN transacoes AS t2 ON t1.idCliente = t2.idCliente
GROUP BY t1.idCliente,
    idadeBase