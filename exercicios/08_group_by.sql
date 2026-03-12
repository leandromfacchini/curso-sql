-- Qual o produto com mais pontos transacionados?
SELECT IdProduto,
    SUM(vlProduto) as qtdeVenda,
    SUM(VlProduto * QtdeProduto) AS totalPontos
    FROM transacao_produto
GROUP BY IdProduto
ORDER BY qtdeVenda