/*Os nomes dos médicos, seus CRMs e a quantidade de consultas que cada um realizou.*/
SELECT M.Nome, M.CRM, 
(SELECT COUNT(C.Medico_id) FROM consulta C WHERE M.idMedico = C.Medico_id) AS Consultas
FROM medico AS M 
