--Dos que começaram sql no primeiro dia, quantos chegaram no quinto dia?
SELECT count(DISTINCT idCliente)

FROM transacoes AS t1

WHERE idCliente IN (
    --clientes que começaram no primeiro dia (dia 25)
    SELECT DISTINCT idCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-25'
)

--clientes que estavam no quinto dia (dia 29)
AND substr(t1.DtCriacao,1,10) = '2025-08-29' 


--teo mencionou que isso não é tão legal, insinuando que da pra usar cte aqui, sendo mais limpo e organizado, mas que é importante passar por esse conteudo tb

--começara de dentro para fora, é mais facil, encontrar primeiro quem estava no primeiro dia para depois fazer o resto, facilitando o raciocinio