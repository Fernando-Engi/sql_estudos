-- Exercício 15

-- Qual cliente realizou transações em mais categorias diferentes durante o ano de 2025?

-- idcliente, idtransacoes, count distinct desccategoria talvez. 

SELECT t2.idCliente, count(DISTINCT t3.DescCategoriaProduto) AS QtdeCat

FROM transacao_produto AS t1

INNER JOIN transacoes AS t2
ON t1.IdTransacao = t2.IdTransacao

INNER JOIN produtos AS t3
ON t1.IdProduto = t3.IdProduto

WHERE t2.DtCriacao >= '2025-01-01' AND t2.DtCriacao < '2026-01-01'

GROUP BY t2.idCliente
ORDER BY QtdeCat DESC 
