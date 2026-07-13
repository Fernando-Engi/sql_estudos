--Qual produto mais transicionado?

SELECT IdProduto,
        count(IdTransacao)
       

FROM transacao_produto

GROUP BY IdProduto
ORDER BY count(IdTransacao) DESC