-- CTE Academy — Exercício 8 (Esse é o primeiro "nível chefe")
-- Enunciado

-- Liste os clientes que realizaram mais transações do que a média de transações por cliente.

WITH QtdeTransacao AS (
    SELECT t1.idcliente, count(t1.idtransacao) AS QtdeTrans
    FROM transacoes AS t1

    INNER JOIN clientes AS t2
    ON t1.idcliente = t2.idcliente

    GROUP BY t1.idcliente
)

SELECT *
FROM QtdeTransacao

WHERE QtdeTrans > (
    SELECT avg(QtdeTrans)
    FROM QtdeTransacao
)

ORDER BY QtdeTrans DESC
