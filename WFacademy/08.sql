-- WF Academy — Exercício 8

-- Mostre, para cada transação:

-- IdTransacao
-- IdCliente
-- DtCriacao
-- QtdePontos
-- O número sequencial da transação daquele cliente, da mais antiga para a mais recente.

SELECT IdTransacao,
       idCliente,
       DtCriacao,
       qtdePontos,
       row_number() OVER 
        (PARTITION BY idCliente ORDER BY DtCriacao, IdTransacao) AS NumTrans

FROM transacoes