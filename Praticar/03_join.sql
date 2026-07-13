-- Qual mes tivemos mais lista de presença assinada?

SELECT substr(t1.DtCriacao, 1, 7), AS anoMes
       count(DISTINCT t1.IdTransacao) AS qtdeTransacao
       t3.DescNomeProduto


FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.idTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE DescNomeProduto = 'Lista de presença'

GROUP BY anoMes
