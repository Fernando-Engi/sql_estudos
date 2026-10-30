-- pega combinações únicas na query, ou seja, pega uma amostra de cada linha, que não se repetem

-- SELECT DISTINCT fltwitch, flEmail

-- FROM clientes

-- O CASO ABAIXO O DISTINCT NÃO TEM EFEITO, POIS IDCLIENTE É UMA PRIMARY KEY, ENTÃO TODAS AS LINHAS SÃO UNICAS

-- SELECT COUNT(DISTINCT idcliente)

-- FROM clientes

--contou os clientes que fizeram transações no mes de julho em ordem do mais recente para o mais antigo (DESC)

-- Conta o total de linhas retornadas pela consulta (neste caso, o total de transações de julho).
SELECT  COUNT(*),

-- Conta quantos IdTransacao diferentes existem.
-- Como cada transação possui um IdTransacao único,
-- o resultado será igual ao COUNT(*).
        COUNT(DISTINCT IdTransacao),

        -- Conta quantos clientes diferentes realizaram transações em julho.
        -- Um mesmo cliente pode ter feito várias transações,
        -- mas será contado apenas uma vez por causa do DISTINCT.
        COUNT(DISTINCT idcliente)


FROM transacoes

WHERE DtCriacao >= '2025-07-01' AND DtCriacao < '2025-08-01'

