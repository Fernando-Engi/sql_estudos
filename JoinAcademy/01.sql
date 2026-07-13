-- Exercício 1 — Seu primeiro JOIN

-- Liste:
-- Idtransacao
-- DescNomeProduto

-- Utilizando as tabelas:
-- transacao_produto
-- produtos

SELECT t2.IdTransacao, t1.DescNomeProduto

FROM produtos AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdProduto = t2.IdProduto


