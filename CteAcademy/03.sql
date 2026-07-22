-- 🏅 CTE Academy — Exercício 3
-- Agora vamos misturar CTE com JOIN.

-- Enunciado
-- Liste as 5 categorias de produtos que geraram o maior valor total vendido.

WITH Top5 AS (

    SELECT t2.DescCategoriaProduto, sum (t1.QtdeProduto * t1.vlProduto) AS VlTotal

    FROM transacao_produto AS t1

    INNER JOIN produtos AS t2
    ON t1.IdProduto = t2.IdProduto

    GROUP BY t2.DescCategoriaProduto
    ORDER BY VlTotal DESC
    )

SELECT *
FROM Top5
LIMIT 5

    

