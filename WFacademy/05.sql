-- WF Academy — Exercício 5

-- Mostre, para cada transação:

-- IdTransacao
-- IdCliente
-- QtdePontos
-- A maior quantidade de pontos já obtida por aquele cliente em uma única transação.


SELECT IdTransacao,
        idCliente,
        qtdePontos,
        max(qtdePontos) OVER (PARTITION BY IdCliente) AS MaxPts


FROM transacoes

ORDER BY idCliente DESC



