-- Queremos saber, para cada cliente, a soma dos pontos e
-- quantas transações ele realizou durante o mês de julho.

-- Selecionamos o ID do cliente.
SELECT IdCliente,

    -- Soma a quantidade de pontos de cada cliente.
    -- O SUM() NÃO faz a separação dos clientes.
    -- Ele apenas soma os pontos de cada grupo criado pelo GROUP BY.
    SUM(qtdePontos),

    -- Conta quantas transações cada cliente realizou.
    -- Assim como o SUM(), o COUNT() também trabalha em cada grupo.
    COUNT(IdTransacao)

FROM transacoes

-- Filtra apenas as transações realizadas em julho de 2025.
WHERE DtCriacao >= '2025-07-01'
  AND DtCriacao < '2025-08-01'

-- Aqui acontece a "mágica".
-- O GROUP BY junta todas as linhas que possuem o mesmo IdCliente,
-- formando um grupo para cada cliente.
--
-- Exemplo:
--
-- Cliente 1
-- -----------
-- 10 pontos
-- 20 pontos
-- 15 pontos
--
-- Cliente 2
-- -----------
-- 5 pontos
-- 30 pontos
--
-- Depois que esses grupos são criados,
-- o SUM() soma os pontos de cada grupo
-- e o COUNT() conta quantas linhas existem em cada grupo.
GROUP BY IdCliente
--Aqui mostra apenas quem tem 4000 ou + pontos
HAVING sum(qtdePontos) >= 4000


ORDER BY sum(qtdePontos) DESC


   