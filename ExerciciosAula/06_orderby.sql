-- SELECT * 

-- FROM clientes

-- --decrescente
-- ORDER BY qtdepontos DESC,

-- LIMIT 10;

--Da data mais antiga para a mais nova (menor para o maior)
-- Se quiser decrescente, coloque DESC na frente. 
SELECT * 

FROM clientes

WHERE flTwitch = 1

ORDER BY DtCriacao, QtdePontos

