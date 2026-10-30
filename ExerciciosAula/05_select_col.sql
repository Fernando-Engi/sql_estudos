SELECT  idCliente,

        --apenas nomeando as colunas novas que consultamos

        qtdePontos,
        qtdePontos + 10 AS QtdPontosPlus10,
        qtdePontos + 2 AS QtdPontosDouble,


        -- pega uma parte da string, nesse caso da posição 1 até o 10 (de caracteres)
        substr(DtCriacao, 1, 19) AS DtSubString,

        --apenas transformamos em um tipo de dado diferente, transformamos no tipo DATA usando datetime()
        datetime(substr(DtCriacao, 1, 19)) AS DtCriacaoNova,


        --agora usamos o strftime '%w' para deixar a data mostrando o dia da semana ( 0 a 6 começando com domingo sendo o 0)
        strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana

FROM clientes
