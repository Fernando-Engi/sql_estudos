SELECT *

FROM transacao_produto AS t1

WHERE t1.IdProduto IN (

    SELECT IdProduto
    FROM Produtos
    WHERE DescDescricaoProduto = 'Resgatar Ponei'
)

