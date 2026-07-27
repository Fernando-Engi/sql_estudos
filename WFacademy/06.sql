-- WF Academy — Exercício 6

-- Mostre, para cada transação:

-- IdTransacao
-- IdCliente
-- QtdePontos
-- A menor quantidade de pontos registrada entre todas as transações do mesmo cliente.
-- A maior quantidade de pontos registrada entre todas as transações do mesmo cliente.

SELECT IdTransacao,
       idCliente,
       qtdePontos,
       max(qtdePontos) OVER (PARTITION BY idCliente) AS MaxPts,
       min(qtdePontos) OVER (PARTITION BY idcliente) AS MinPts

FROM transacoes