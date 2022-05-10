/*10.Os nomes, CREs e número de internações de enfermeiros que participaram de mais de uma internação.*/
SELECT E.Nome, E.CRE,
(SELECT COUNT(IE.id_Enfermeiro) FROM internacao_tem_enfermeiro IE 
WHERE E.idEnfermeiro = IE.id_Enfermeiro) AS Internações
FROM enfermeiro AS E 
WHERE
(SELECT COUNT(IE.id_Enfermeiro) FROM internacao_tem_enfermeiro IE 
WHERE E.idEnfermeiro = IE.id_Enfermeiro) >= 1