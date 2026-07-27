-- WF Academy — Exercício 1
-- Enunciado
-- Para cada cliente, mostre:

-- IdCliente
-- QtdePontos
-- A média de pontos de todos os clientes

SELECT idcliente,
       qtdepontos,
       avg(qtdePontos) OVER () AS mediapontos

FROM clientes