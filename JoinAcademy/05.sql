-- Exercício 5
-- Agora vamos subir um degrau.

-- Enunciado
-- Qual categoria possui o maior número de transações?

-- Mostre:
-- Categoria
-- Quantidade de transações

-- Ordene da maior para a menor.

SELECT t1.DescCategoriaProduto, count(DISTINCT t2.IdTransacao) AS QtdeTransacoes

FROM produtos AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdProduto = t2.IdProduto

GROUP BY t1.DescCategoriaProduto
ORDER BY QtdeTransacoes DESC