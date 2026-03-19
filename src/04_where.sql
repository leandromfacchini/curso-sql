SELECT *
FROM produtos
WHERE DescCategoriaProduto = 'rpg'
LIMIT 10;

SELECT *
FROM clientes
WHERE flEmail = '1';

SELECT *
FROM clientes
WHERE QtdePontos >= 500;

SELECT *
FROM produtos
WHERE DescNomeProduto like '%churn%';