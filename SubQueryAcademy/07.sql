-- Subquery Academy — Exercício 7
-- Quais categorias possuem pelo menos uma transação realizada em 2025?


SELECT DISTINCT t1.DescCategoriaProduto

FROM produtos AS t1

WHERE t1.IdProduto IN (
    SELECT t2.IdProduto

    FROM transacao_produto AS t2

    INNER JOIN transacoes AS t3
    ON t2.IdTransacao = t3.IdTransacao

    WHERE t3.DtCriacao >= '2025-01-01' AND DtCriacao < '2026-01-01'
    )
