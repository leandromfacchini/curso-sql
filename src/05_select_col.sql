SELECT idCliente,
    -- qtdePontos,
    -- qtdePontos + 10 AS PontosMaisDez,
    DtCriacao,
    DATETIME(SUBSTRING(DtCriacao, 1, 19)),
    DATETIME(DtCriacao),
    strftime('%w', DtCriacao) as diaSemana
FROM clientes;