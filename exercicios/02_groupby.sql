-- Qual cliente juntou mais pontos positivos em 2025-05?
SELECT idCliente,
    SUM(qtdePontos) AS totalPontos
FROM transacoes
WHERE DtCriacao >= '2025-05-01'
    AND DtCriacao < '2025-06-01'
    AND qtdePontos > 0
GROUP BY idCliente
ORDER BY SUM(qtdePontos) DESC
LIMIT 1