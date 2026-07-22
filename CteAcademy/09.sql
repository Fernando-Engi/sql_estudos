-- CTE Academy — Exercício 9

-- Enunciado
-- Liste as categorias de produtos cuja quantidade total vendida é maior que a média de quantidade vendida entre todas as categorias.

WITH QtdeVendida AS (

    SELECT t2.desccategoriaproduto, sum(t1.QtdeProduto) AS somaqtd
    FROM transacao_produto AS t1

    INNER JOIN produtos AS t2
    ON t1.idproduto = t2.idproduto

    GROUP BY t2.desccategoriaproduto
    ORDER BY somaqtd DESC
)

SELECT *
FROM QtdeVendida

WHERE somaqtd > (
    SELECT avg(somaqtd)
    FROM QtdeVendida
)





