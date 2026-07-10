--Qual dia da semana tem mais pedidos em 2025?

SELECT  strftime('%w', datetime(substr(DtCriacao, 1, 19))) AS DiaSemana,
        count(IdTransacao) AS Qtdetransac


FROM transacoes

WHERE DtCriacao >= '2025-01-01' AND DtCriacao < '2026-01-01'

GROUP BY DiaSemana
ORDER BY Qtdetransac DESC