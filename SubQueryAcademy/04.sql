-- Exercício 4
-- Quais clientes possuem exatamente a mesma quantidade de pontos que o cliente com maior quantidade de pontos?

SELECT idCliente, qtdePontos
FROM clientes

WHERE qtdePontos = (

    SELECT max(qtdepontos)
    FROM clientes
    )