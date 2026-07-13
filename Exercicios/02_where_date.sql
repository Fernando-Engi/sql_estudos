-- lista de pedidos realizados no fim de semana

SELECT *,
    strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana

FROM transacoes

WHERE DiaSemana IN ('0','6')
