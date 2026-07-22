-- CTE Academy — Exercício 5
-- Enunciado

-- Liste o(s) cliente(s) que possuem a maior quantidade total de pontos.

WITH PontosClientes AS (

    SELECT idcliente, qtdePontos

    FROM clientes

)

SELECT *
FROM PontosClientes
WHERE qtdePontos = (
    SELECT max(qtdePontos)
    FROM clientes
)