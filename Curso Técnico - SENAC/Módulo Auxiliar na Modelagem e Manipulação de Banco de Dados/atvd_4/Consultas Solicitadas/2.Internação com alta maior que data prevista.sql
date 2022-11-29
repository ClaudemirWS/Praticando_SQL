/*2. Todos os dados das internações que tiveram data de alta maior que a data prevista para a alta.*/
SELECT *
FROM internacao
WHERE DataAlta > DataPrevAlta;