--Qual o produto com mais pontos transicionado?

SELECT IdProduto,
        sum(vlProduto) AS totalPontos

FROM transacao_produto

GROUP BY IdProduto
ORDER BY sum(vlproduto) DESC
