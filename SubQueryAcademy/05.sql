-- Quais clientes possuem mais pontos do que a maior quantidade de pontos já concedida em uma única transação?


SELECT t2.idCliente, t2.qtdepontos
FROM clientes AS t2

WHERE t2.qtdePontos > (

    SELECT max(t1.qtdepontos)
    from transacoes AS t1
    )
ORDER BY t2.qtdePontos DESC 
