-- WF Academy — Exercício 10
-- Mostre, para cada cliente:

-- A data da primeira transação.
-- A data da última transação.
-- A quantidade total de transações realizadas.

-- Exiba apenas uma linha por cliente.

WITH primeiratrans AS (

    SELECT *,
            row_number() OVER (PARTITION BY t1.idCliente ORDER BY t1.DtCriacao) AS diacrescente
    FROM transacoes AS t1

    WHERE diacrescente = 1

),

ultimatrans AS (

    SELECT *,
            row_number() OVER (PARTITION BY t2.idCliente ORDER BY t2.DtCriacao DESC) AS diadecrescente
    FROM primeiratrans AS t2

    WHERE diadecrescente = 1
)

SELECT DISTINCT idCliente,
       t1.DtCriacao,
       t2.DtCriacao,
       count(IdTransacao)

FROM ultimatrans
       
            