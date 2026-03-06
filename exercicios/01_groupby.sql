-- Quantos clientes tem email cadastrado?
SELECT SUM(flEmail) FROM clientes;


SELECT COUNT(*) FROM clientes
WHERE flEmail = 1;