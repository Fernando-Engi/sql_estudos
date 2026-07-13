-- JOIN Academy — Exercício 11

-- Qual categoria movimentou o maior valor em produtos (vlProduto) durante o ano de 2025?

SELECT t2.DescCategoriaProduto, sum(t1.vlProduto) AS VlTotal

FROM transacao_produto AS t1

INNER JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

INNER JOIN transacoes AS t3
ON t1.IdTransacao = t3.IdTransacao

WHERE t3.DtCriacao >= '2025-01-01' AND t3.DtCriacao < '2026-01-01'

GROUP BY t2.DescCategoriaProduto
ORDER BY VlTotal DESC
