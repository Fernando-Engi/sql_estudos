-- Exercício 8 (último da Fase 1)

-- Qual categoria teve a maior média de quantidade de pontos por transação em 2025?

-- Mostre:
-- Categoria
-- Média de pontos por transação
-- Considere apenas transações realizadas em 2025.
-- Ordene da maior média para a menor.

SELECT t2.DescCategoriaProduto, avg(t3.QtdePontos) AS mediaPPT

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

LEFT JOIN transacoes AS t3
ON t1.IdTransacao = t3.IdTransacao


WHERE t3.DtCriacao >= '2025-01-01' AND t3.DtCriacao < '2026-01-01'

GROUP BY t2.DescCategoriaProduto
ORDER BY mediaPPT DESC