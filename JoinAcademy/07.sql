-- 🏋️ Exercício 7

-- Quais categorias tiveram pelo menos uma transação em 2025?

-- Mostre:
-- Categoria
-- Quantidade de transações
-- Considere apenas transações realizadas em 2025.
-- Ordene da maior quantidade para a menor.

SELECT t2.DescCategoriaProduto, count(t1.IdTransacao) AS QtdeTransacao

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

LEFT JOIN transacoes AS t3
ON t1.IdTransacao = t3.IdTransacao

WHERE t3.DtCriacao >= '2025-01-01' AND t3.DtCriacao < '2026-01-01'


GROUP BY t2.DescCategoriaProduto
ORDER BY QtdeTransacao DESC 