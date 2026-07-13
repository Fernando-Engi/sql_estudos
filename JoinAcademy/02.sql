-- Exercício 2
-- Liste:
-- IdTransacao
-- DescNomeProduto
-- DescCategoriaProduto

-- Utilizando as tabelas:
-- transacao_produto
-- produtos


SELECT t1.IdTransacao, t2.DescNomeProduto, t2.DescCategoriaProduto

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

