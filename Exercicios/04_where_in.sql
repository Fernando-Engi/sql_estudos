--selecione produtos que contém churn no nome

SELECT *

FROM produtos

WHERE Descproduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')
