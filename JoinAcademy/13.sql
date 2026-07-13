-- Exercício 13

-- Qual cliente realizou a maior quantidade de transações distintas durante o ano de 2025 envolvendo produtos da categoria "present"
--idcliente, count distinct idtransacao, 2025, desccategoria = present 


SELECT t2.idCliente, count(DISTINCT t2.IdTransacao) AS QtdeTrans

FROM transacao_produto AS t1

INNER JOIN transacoes AS t2
ON t1.IdTransacao = t2.IdTransacao

INNER JOIN produtos AS t3
ON t1.IdProduto = t3.IdProduto

WHERE t2.DtCriacao >= '2025-01-01' AND t2.DtCriacao < '2026-01-01'
AND t3.DescCategoriaProduto = 'present'

GROUP BY t2.idCliente
ORDER BY QtdeTrans DESC 