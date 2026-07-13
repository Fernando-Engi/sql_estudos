-- Qual o valor médio de pontos positivos por dia?


-- A coluna DtCriacao possui data e horário (ano, mês, dia, hora, minuto e segundo).
-- Se usarmos GROUP BY diretamente nela, cada horário será considerado um valor diferente.
-- O substr(DtCriacao, 1, 10) pega apenas a parte da data (AAAA-MM-DD),
-- fazendo com que todas as transações do mesmo dia sejam agrupadas juntas.
SELECT substr(DtCriacao, 1, 10) AS Dia, 
       round(avg(qtdePontos),2) AS MediaPtsPDia


FROM clientes 

WHERE qtdePontos > 0

GROUP BY substr(DtCriacao, 1, 10)
ORDER BY Dia ASC