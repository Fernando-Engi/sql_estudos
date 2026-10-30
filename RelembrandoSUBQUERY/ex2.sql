-- Exercício 2/5 | Clientes que realizaram transações

-- Liste todos os clientes que realizaram pelo menos uma transação com DescSistemaOrigem = 'Twitch'.

-- Regras:
-- - Utilize uma subquery no WHERE.
-- - Não utilize JOIN nem CTE.
-- - Retorne todas as colunas da tabela clientes.
-- - Cada cliente deve aparecer uma única vez.

SELECT * 

FROM clientes



SELECT DISTINCT idCliente

FROM transacoes
