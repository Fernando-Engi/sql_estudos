
-- INTERVALOS
-- de 0 a 500   --> ponei
-- de 501 a 1000 --> Ponei Premium
-- de 1001 a 5000 --> Mago aprendiz
-- de 5001 a 10000 --> Mago mestre
-- + de 10000 --> Mago supremo



SELECT IdCliente,
        QtdePontos,
        CASE 
            WHEN qtdePontos <= 500 THEN 'Ponei'
            WHEN  qtdePontos <= 1000 THEN 'Ponei Premium'
            WHEN  qtdePontos <= 5000 THEN 'Mago aprendiz'
            WHEN  qtdePontos <= 10000 THEN 'Mago mestre'
            ELSE 'Mago supremo'
        END AS NomeGrupo,

        CASE
            WHEN qtdePontos <= 1000 THEN 1
            ELSE 0
        END AS flPonei
        



FROM clientes

ORDER BY qtdePontos DESC

