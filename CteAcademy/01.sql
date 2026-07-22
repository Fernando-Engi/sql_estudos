-- CTE Academy
-- Exercício 1 — Primeiro contato
-- Liste o IdCliente e a quantidade total de pontos recebidos (SUM(QtdePontos)) de cada cliente.
-- Requisito: utilize uma CTE para organizar a consulta.

WITH ResumoClientes AS (

    SELECT idCliente, sum(qtdePontos)
    FROM clientes

    GROUP BY idCliente
    ORDER BY sum(qtdePontos) DESC
)

SELECT *
FROM ResumoClientes


