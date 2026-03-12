-- Qual dia da semana quem mais pedidos em 2025?
SELECT STRFTIME('%w', SUBSTRING(DtCriacao, 1, 10)) AS diaSemana,
    COUNT(DISTINCT(IdTransacao)) AS qtdeTransacao
FROM transacoes
WHERE SUBSTRING(DtCriacao, 1, 4) = '2025'
GROUP BY 1
ORDER BY 2