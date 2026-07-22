-- Agora começa a ficar interessante.
-- 🏅 CTE Academy — Exercício 2

-- Liste os 10 clientes com maior quantidade de pontos acumulados.

WITH Top10Cli AS (
    SELECT idCliente, sum(qtdePontos)
    FROM clientes
    GROUP BY idCliente
    ORDER BY sum(qtdePontos) DESC
)

SELECT *
FROM Top10Cli
LIMIT 10 