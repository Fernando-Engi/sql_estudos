
WITH tb_usuario_dias AS (

    SELECT substr(DtCriacao, 1, 10) AS dtdia,
        count(DISTINCT IdTransacao) AS qtdetransacao

    FROM transacoes

    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'

    GROUP BY dtdia

)

SELECT *,
       sum(qtdetransacao) OVER (ORDER BY dtdia) AS qtdetransacaoACUM

FROM tb_usuario_dias

