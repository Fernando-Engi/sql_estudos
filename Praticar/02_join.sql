-- Em 2024, quantas transações de lovers tiveram


SELECT t3.DescCategoriaProduto,
        count(distinct t1.IdTransacao)

FROM transacoes AS t1


LEFT JOIN transacao_produto AS t2
ON t1.idTransacao = t2.idTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t1.DtCriacao >= '2024-01-01' AND t1.DtCriacao < '2025-01-01'


GROUP BY t3.DescCategoriaProduto
