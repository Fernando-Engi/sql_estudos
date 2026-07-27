-- WF Academy — Exercício 3

-- Enunciado
-- Para cada transação, mostre:

-- IdTransacao
-- IdCliente
-- QtdePontos
-- A quantidade de transações que aquele cliente realizou.

SELECT idtransacao,
       idcliente,
       qtdePontos,
       count(IdTransacao) OVER (PARTITION BY idCliente)

FROM transacoes