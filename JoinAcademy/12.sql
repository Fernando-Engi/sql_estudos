-- Exercício 12
-- Qual cliente acumulou a maior quantidade de pontos em transações relacionadas a produtos da categoria "RPG" durante o ano de 2025?

--Idcliente, qtdepontos, desccategoria = rpg, 2025
--tabelas: cliente, produtos, transacoes

SELECT t2.idCliente, sum(t2.qtdePontos) AS PtsTotais, t3.DescCategoriaProduto

FROM transacao_produto AS t1

LEFT JOIN transacoes AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t1.IdProduto = t3.IdProduto

WHERE t2.DtCriacao >= '2025-01-01' AND t2.DtCriacao < '2026-01-01'
AND t3.DescCategoriaProduto = 'rpg'

GROUP BY t2.idCliente
ORDER BY PtsTotais DESC

-- exercicio errado, pois é necessário o uso de subqueries/cte's, coisa que ainda não aprendi