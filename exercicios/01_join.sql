-- Quais clientes mais perderam pontos por Lover?
SELECT t1.idCliente,
    SUM(t1.qtdePontos) AS totalPontos
FROM transacoes AS t1
    LEFT JOIN transacao_produto AS t2 on t1.IdTransacao = t2.IdTransacao
    LEFT JOIN produtos AS t3 on t2.IdProduto = t3.IdProduto
WHERE t3.DescCategoriaProduto = 'lovers'
GROUP BY t1.idCliente
ORDER BY SUM(t1.qtdePontos) 