-- CTE Academy — Exercício 6
-- Agora vamos dar um passo que é muito comum em projetos de BI.

-- Enunciado
-- Liste os clientes cuja quantidade de pontos é maior que a média de pontos de todos os clientes.

WITH PtsCli AS (

    SELECT idCliente, qtdePontos
    FROM clientes

)

SELECT *
FROM PtsCli

WHERE qtdePontos > (

    SELECT avg(qtdePontos)
    FROM clientes

)

ORDER BY qtdePontos DESC 