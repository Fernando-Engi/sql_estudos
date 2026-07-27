-- WF Academy — Exercício 4
-- Agora vamos subir um degrau.

-- Enunciado
-- Para cada transação, mostre:

-- IdTransacao
-- IdCliente
-- QtdePontos
-- A soma de todos os pontos que aquele cliente acumulou em suas transações.

SELECT IdTransacao,
       idCliente,
        qtdePontos,
        sum(qtdePontos) OVER (PARTITION BY idCliente)

FROM transacoes

