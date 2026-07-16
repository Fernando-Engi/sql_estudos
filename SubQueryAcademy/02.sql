
SELECT t1.IdProduto
FROM produtos AS t1

WHERE t2.vlProduto > (
    SELECT avg(t2.vlProduto)
    FROM transacao_produto AS t2
    )
