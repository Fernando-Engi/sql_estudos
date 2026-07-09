--selecione produtos que contém churn no nome

SELECT *

FROM produtos


WHERE Descproduto = 'Churn_10pp'
OR Descproduto = 'Churn_2pp'
OR Descproduto = 'Churn_5pp'