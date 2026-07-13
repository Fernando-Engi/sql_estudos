-- Exercício 4
-- Liste todas as transações que possuem produtos da categoria "RPG".

-- Mostre apenas:
-- IdTransacao
-- DescNomeProduto
-- DescCategoriaProduto

-- Ordene pelo IdTransacao.

SELECT t1.IdTransacao, t2.DescNomeProduto, t2.DescCategoriaProduto

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

WHERE DescCategoriaProduto = 'rpg'

ORDER BY t1.IdTransacao