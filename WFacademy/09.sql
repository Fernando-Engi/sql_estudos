-- WF Academy — Exercício 9
-- Agora vamos fazer um exercício que já lembra bastante os do Téo.

-- Enunciado
-- Mostre apenas a primeira transação de cada cliente.

-- Exiba:
-- IdCliente
-- IdTransacao
-- DtCriacao
-- QtdePontos

WITH transacoes_cli AS (

    SELECT IdCliente,
           DtCriacao,
           qtdePontos,
           IdTransacao,
           row_number() OVER (
           PARTITION BY idCliente
           ORDER BY DtCriacao, IdTransacao) AS TransacoesClientes

    FROM transacoes
)

SELECT idCliente, IdTransacao, DtCriacao, qtdePontos
FROM transacoes_cli

WHERE TransacoesClientes = 1