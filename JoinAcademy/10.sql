-- JOIN Academy — Exercício 10

-- Qual sistema de origem gerou a maior quantidade de pontos positivos em transações realizadas durante o ano de 2025?

SELECT DescSistemaOrigem, sum(qtdePontos) AS PtsTotais

FROM transacoes

WHERE DtCriacao >= '2025-01-01' AND DtCriacao < '2026-01-01'
AND qtdePontos > 0

GROUP BY DescSistemaOrigem
ORDER BY PtsTotais DESC 