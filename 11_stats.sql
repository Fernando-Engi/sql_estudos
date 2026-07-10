-- avg tira a média e o round arredonda o número. o 2 é a qtd de casas decimais

SELECT round(avg(qtdePontos), 2) AS mediaCarteira,
        --menor carteira
        min(qtdePontos) AS mincarteira,

        --maior carteira
        max(qtdepontos) AS maxcarteira,

        --qtd de pessoas que tem twitch (o sum funciona pq essa coluna está configurada com 0 ou 1, entao da pra usar sum)
        sum(flTwitch) AS Qtdcontastwitch,

        --mesma coisa que o de cima
        sum(flEmail) AS Qtdcontasemail
        
FROM clientes
