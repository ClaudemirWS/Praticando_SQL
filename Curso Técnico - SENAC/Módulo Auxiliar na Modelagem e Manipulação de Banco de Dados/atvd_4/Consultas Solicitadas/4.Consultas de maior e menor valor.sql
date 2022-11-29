/*4.Todos os dados da consulta de maior valor e também da de menor valor 
(ambas as consultas não foram realizadas sob convênio).*/
SELECT * FROM consulta WHERE 
ValorConsulta = (SELECT MAX(ValorConsulta) FROM consulta) 
OR 
ValorConsulta = (SELECT MIN(ValorConsulta) FROM consulta);