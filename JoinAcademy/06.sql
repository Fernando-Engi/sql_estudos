-- JOIN Academy — Exercício 6
-- Agora vou mudar um detalhe importante no enunciado.

-- Qual categoria possui a maior quantidade de produtos cadastrados?

-- Mostre:
-- Categoria
-- Quantidade de produtos

-- Ordene da maior para a menor.

SELECT DescCategoriaProduto, count(DescNomeProduto)

FROM produtos AS t1

GROUP BY DescCategoriaProduto
ORDER BY count(DescNomeProduto) DESC 

