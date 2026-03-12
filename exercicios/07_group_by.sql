-- Qual o produto mais transacionado?
SELECT IdProduto,
    --COUNT(*)
    SUM(QtdeProduto) as qtdeProdutoSum
FROM transacao_produto
GROUP BY IdProduto
ORDER BY COUNT(*) DESC