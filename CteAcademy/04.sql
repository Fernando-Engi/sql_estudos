-- CTE Academy — Exercício 4
-- Agora a CTE vai servir como uma base para outra consulta.

-- Enunciado
-- Liste as categorias de produtos cujo valor total vendido é maior que a média de valor vendido entre todas as categorias.


WITH somapontos AS (

    SELECT t2.DescCategoriaProduto,
           sum(t1.QtdeProduto * t1.vlProduto) AS SomaDePontos

    FROM transacao_produto AS t1

    INNER JOIN produtos AS t2
    ON t1.idproduto = t2.IdProduto

    
    GROUP BY t2.DescCategoriaProduto
    ORDER BY sum(t1.QtdeProduto * t1.vlProduto) DESC

)


SELECT * 
FROM somapontos

WHERE SomaDePontos > (
    SELECT avg(SomaDePontos)
    FROM somapontos
)







