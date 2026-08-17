

DROP TABLE IF EXISTS relatorio_diario;
CREATE TABLE IF NOT EXISTS relatorio_diario AS

WITH tb_diario AS (

    SELECT substr (DtCriacao, 1, 10) AS dtDia,
           count(DISTINCT IdTransacao) AS qtdetransacao

    FROM transacoes
    GROUP BY dtdia
    ORDER BY dtdia

),

tb_acum AS (
    SELECT *,
            sum(qtdetransacao) OVER (ORDER BY dtdia) AS qtdetransacaoAcum

    FROM tb_diario
)

SELECT *
FROM tb_acum