/*1. Todos os dados e o valor médio das consultas do ano de 2020 e das que foram feitas sob convênio.*/
SELECT *, (SELECT AVG(ValorConsulta)) AS ValorMedio
FROM consulta
WHERE Data >= '2020/01/01'AND DATA <= '2020/12/31';