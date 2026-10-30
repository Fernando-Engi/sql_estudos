-- de quanto em quanto tempo as pessoas voltam (recorrencia)

WITH cliente_dia AS (

    SELECT 
        DISTINCT
        idcliente,
        substr(DtCriacao, 1, 10) AS dtdia

    FROM transacoes

    WHERE substr(dtcriacao, 1, 4) = '2025'

    ORDER BY idCliente, dtdia

),


tb_lag AS (
    SELECT *,
            lag(dtdia) OVER (PARTITION BY IdCliente order by dtdia) AS lagdia

    FROM cliente_dia

),


tb_diff_dt AS (



    SELECT *,
            julianday(dtdia) - julianday(lagdia) AS dtDiff  --que caralhos eh julianday
 
    FROM tb_lag

)

SELECT idcliente, avg(dtDiff)

FROM tb_diff_dt
GROUP BY idcliente
