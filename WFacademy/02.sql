-- WF Academy — Exercício 2
-- Agora vamos dar um passo bem pequeno.

-- Enunciado
-- Para cada transação, mostre:

-- IdTransacao
-- IdCliente
-- QtdePontos
-- A quantidade total de transações que existem na tabela.

SELECT idtransacao,
       idcliente,
        qtdepontos,
        count(idtransacao) OVER()


FROM transacoes