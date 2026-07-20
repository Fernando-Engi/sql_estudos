-- Subquery Academy — Exercício 8
-- Agora vou subir um nível.

-- Enunciado
-- Quais clientes realizaram pelo menos uma transação contendo um produto da categoria present durante o ano de 2025?


SELECT DISTINCT idCliente

FROM transacoes 
WHERE IdTransacao IN (
    SELECT t1.IdTransacao

    FROM transacao_produto AS t1

    INNER JOIN transacoes AS t2
    ON t1.IdTransacao = t2.IdTransacao

    INNER JOIN produtos AS t3
    ON t1.IdProduto = t3.IdProduto

    WHERE t2.DtCriacao >= '2025-01-01' AND t2.DtCriacao < '2026-01-01'
    AND t3.DescCategoriaProduto = 'present'
    )
    