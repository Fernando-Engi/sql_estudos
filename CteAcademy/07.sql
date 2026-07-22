-- CTE Academy — Exercício 7
-- Agora vamos fazer uma CTE que realmente começa a justificar sua existência.

-- Enunciado
-- Liste as categorias de produtos que tiveram mais de 100 transações.

WITH QuantidadeTransacao AS (

    SELECT t2.desccategoriaproduto, count(DISTINCT t1.idtransacao) AS QtdeTrans
    FROM transacao_produto AS t1

    INNER JOIN produtos AS t2
    ON t1.idproduto = t2.idproduto

    GROUP BY t2.desccategoriaproduto
    ORDER BY QtdeTrans DESC

)

SELECT * 
FROM QuantidadeTransacao

WHERE QtdeTrans > 100



