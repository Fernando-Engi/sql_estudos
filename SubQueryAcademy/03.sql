-- Subquery Academy — Exercício 3
-- Quais categorias possuem pelo menos um produto cujo valor (VlProduto) é maior que o valor médio de todos os produtos vendidos?

 SELECT DISTINCT t1.DescCategoriaProduto, t2.vlProduto

FROM produtos AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdProduto = t2.IdProduto

WHERE t2.vlProduto > (

    SELECT avg(t3.vlProduto)

    FROM transacao_produto AS t3
    )

