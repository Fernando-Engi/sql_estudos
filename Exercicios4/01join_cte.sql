-- Quem iniciou o curso no primeiro dia, em média assistiu quantas aulas?


--Quem participou da primeira aula
WITH tb_prim_dia AS (

    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(dtcriacao, 1, 10) = '2025-08-25'

),

--Quem participou do curso todo

tb_dias_curso AS (

    SELECT DISTINCT 
        idcliente, 
        substr(DtCriacao, 1, 10) AS PresenteDia
    FROM transacoes
    WHERE DtCriacao >= '2025-08-25'
    AND DtCriacao < '2025-08-30'

    ORDER BY idCliente, PresenteDia

),

--Quantas vezes quem participou do primeiro dia, voltou
tb_cliente_dias AS (

    SELECT t1.idCliente,
        count(DISTINCT t2.PresenteDia) AS qtdedias

    FROM tb_prim_dia AS t1
    LEFT JOIN tb_dias_curso AS t2
    ON t1.idCliente = t2.idCliente

    GROUP BY t1.idCliente
    ),

--média
SELECT avg(qtdedias)
FROM tb_cliente_dias
