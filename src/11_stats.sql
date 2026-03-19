SELECT ROUND(AVG(qtdePontos), 2) AS mediaCarteira,
    1.* SUM(qtdePontos) / COUNT(idCliente) AS mediaCarteiraRoots,
    MIN(qtdePontos) AS minCarteira,
    MAX(qtdePontos) AS maxCarteira,
    SUM(flTwitch),
    SUM(flEmail)
FROM clientes