-- Qual categoria tem mais produtos vendidos?
SELECT COUNT(DISTINCT(t1.IdTransacao)) AS total,
    t2.DescCategoriaProduto
FROM transacao_produto AS t1
    LEFT JOIN produtos as t2 ON t1.IdProduto = t2.IdProduto
GROUP BY t2.DescCategoriaProduto
ORDER BY total DESC