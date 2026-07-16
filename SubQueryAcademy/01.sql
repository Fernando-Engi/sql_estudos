-- Exercício 1
-- Qual cliente possui mais pontos do que a média de pontos de todos os clientes?

SELECT DISTINCT idCliente, qtdePontos

FROM clientes 

WHERE qtdePontos > (

    SELECT avg(qtdePontos)
    FROM clientes
    )

ORDER BY qtdePontos DESC
