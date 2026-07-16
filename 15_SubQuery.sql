--Dos clientes que começaram, quantos chegaram ao 5 dia?

SELECT count(DISTINCT idcliente)
FROM transacao_produto AS t1

WHERE t1.idCliente IN (

    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao, 1, 10) = '2025-08-25'
)
AND subst(t1.DtCriacao, 1, 10) = '2025-08-29'