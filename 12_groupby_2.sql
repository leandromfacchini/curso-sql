SELECT idCliente,
    SUM(qtdePontos) AS totalPontos
FROM transacoes
WHERE DtCriacao >= '2025-07-01'
    AND DtCriacao < '2025-08-01'
GROUP BY idCliente
HAVING SUM(QtdePontos) > 4000
ORDER BY totalPontos DESC
LIMIT 10