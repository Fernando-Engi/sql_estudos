--Qual categoria tem mais produtos vendidos?

SELECT p.DescCategoriaProduto,
       count(distinct tp.IdTransacao)

FROM transacao_produto AS tp 

LEFT JOIN produtos AS p

 ON tp.IdProduto = p.IdProduto

 GROUP BY p.DescCategoriaProduto

 ORDER BY count(distinct tp.IdTransacao) DESC