-- WF Academy — Exercício 7

-- Mostre, para cada transação:

-- IdTransacao
-- IdCliente
-- DtCriacao
-- QtdePontos
-- O total acumulado de pontos do cliente até aquela transação.

SELECT IdTransacao,
       idCliente,
       DtCriacao,
       qtdePontos,
       sum(qtdePontos) OVER (PARTITION BY IdCliente ORDER BY DtCriacao) AS PtsACUM

FROM transacoes

