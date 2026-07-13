-- Exercício 3
-- Agora vamos dar um passinho a mais.

-- Liste:
-- IdTransacao
-- QtdeProduto
-- DescNomeProduto

-- Utilizando:
-- transacao_produto
-- produtos

SELECT t1.IdTransacao, t1.QtdeProduto, t2.DescNomeProduto

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

