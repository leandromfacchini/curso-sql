-- Qual o valor médio de pontos positivos por dia?
SELECT SUM(qtdePontos) AS totalPontos,
    COUNT(SUBSTRING(DtCriacao, 1, 10)) AS qtdeDiasRepetidos,
    COUNT(DISTINCT(SUBSTRING(DtCriacao, 1, 10))) AS qtdeDiasUnicos,
    SUM(qtdePontos) / COUNT(DISTINCT(SUBSTRING(DtCriacao, 1, 10))) AS avgPontosDia
FROM transacoes
WHERE qtdePontos > 0