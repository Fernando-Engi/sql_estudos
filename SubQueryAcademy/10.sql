-- Subquery Academy — Exercício 10
-- Agora começa a ficar interessante.

-- Enunciado
-- Quais clientes nunca realizaram uma transação contendo produtos da categoria rpg?


SELECT DISTINCT t3.IdCliente

FROM transacoes AS t3

WHERE t3.IdCliente NOT IN (

    SELECT DISTINCT t4.IdCliente

    FROM transacao_produto AS t1

    INNER JOIN produtos AS t2
    ON t1.IdProduto = t2.IdProduto

    INNER JOIN transacoes AS t4
    ON t1.IdTransacao = t4.IdTransacao

    WHERE t2.DescCategoriaProduto = 'rpg'
)