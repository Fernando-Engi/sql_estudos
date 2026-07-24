
WITH tb_cliente_dia AS (

    SELECT idcliente,
        substr(dtcriacao, 1, 10) AS dtdia,
        count(DISTINCT IdTransacao) AS qtdetransacao

    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'

    GROUP BY idCliente, dtdia

)

SELECT *,

        --aqui ele vai somando acumuladamente ordenado por cliente
        sum(qtdetransacao) OVER (PARTITION BY idCliente ORDER BY dtdia) AS acum,


        -- não entendi muito sua função/importância
        lag(qtdetransacao) OVER (PARTITION BY idcliente ORDER BY dtdia) AS lag

FROM tb_cliente_dia

