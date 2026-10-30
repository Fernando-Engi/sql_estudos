-- Exercício 1/5: Encontrando produtos
-- Dificuldade: Fácil
-- Enunciado
-- Liste os produtos que aparecem em pelo menos uma transação.

-- Apresente todas as colunas da tabela produtos, sem duplicar produtos no resultado.
-- Regras
-- - Utilize uma subquery no WHERE.
-- - Não utilize JOIN.
-- - Não utilize CTE.
-- - Evite retornar produtos que nunca foram vendidos.


SELECT DISTINCT *

FROM produtos

WHERE IdProduto IN (

    SELECT IdProduto
    FROM transacao_produto
)