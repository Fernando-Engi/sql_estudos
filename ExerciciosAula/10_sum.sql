SELECT 
        sum(qtdePontos),

        -- Aqui somamos as quantidades de pontos positivas totais
        sum(CASE
            WHEN qtdePontos > 0 THEN qtdePontos
        END) AS qtdePontosPositivos,
        -- Aqui somamos as quantidades de pontos negativas totais
        sum(CASE
            WHEN qtdePontos < 0 THEN qtdePontos
        END) AS qtdePontosNegativos

        -- Aqui contamos a quantidade de transações negativas que foram feitas
        count(CASE
            WHEN qtdePontos < 0 THEN qtdePontos
        END) AS qtdeTransaçõesNegativos
    

FROM transacoes

WHERE dtcriacao >= '2025-07-01' AND DtCriacao < '2025-08-01' AND qtdePontos > 0