-- JOIN Academy — Exercício 9
-- Qual categoria acumulou a maior quantidade de pontos em transações realizadas durante o ano de 2025?

SELECT t2.DescCategoriaProduto, sum(t3.qtdePontos)

FROM transacao_produto AS t1

LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto

LEFT JOIN transacoes AS t3
ON t1.IdTransacao = t3.IdTransacao

WHERE t3.dtcriacao >= '2025-01-01' AND t3.DtCriacao < '2026-01-01'

GROUP BY t2.DescCategoriaProduto
ORDER BY sum(t3.qtdePontos) DESC
