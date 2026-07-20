-- Subquery Academy — Exercício 6
-- Quais transações possuem pelo menos um produto da categoria rpg?
SELECT DISTINCT t2.IdTransacao, t2.IdProduto

FROM transacao_produto AS t2

WHERE t2.IdProduto IN (
    SELECT t1.IdProduto
    FROM produtos AS t1
    WHERE t1.DescCategoriaProduto = 'rpg'
    )

