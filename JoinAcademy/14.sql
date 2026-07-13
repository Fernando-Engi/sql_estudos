-- Exercício 14
-- Esse eu vou aumentar um pouco o nível.

-- Qual categoria teve a maior quantidade de clientes diferentes realizando transações durante o ano de 2025?

--desccategoriaproduto, count distinct clientes (da tabela de transacoes), 2025

SELECT t3.DescCategoriaProduto, count(DISTINCT t2.idCliente) AS QtdeClientes

FROM transacao_produto AS t1

INNER JOIN transacoes AS t2
ON t1.IdTransacao = t2.IdTransacao

INNER JOIN produtos AS t3
ON t1.IdProduto = t3.IdProduto

WHERE t2.DtCriacao >= '2025-01-01' AND t2.DtCriacao < '2026-01-01'

GROUP BY t3.DescCategoriaProduto
ORDER BY QtdeClientes DESC

