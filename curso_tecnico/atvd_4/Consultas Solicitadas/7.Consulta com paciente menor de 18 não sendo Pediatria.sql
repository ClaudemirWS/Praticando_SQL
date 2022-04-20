/*7. Nome do paciente, data da consulta e especialidade de todas as consultas em que os pacientes eram menores de 18 anos
na data da consulta e cuja especialidade não seja “pediatria”, ordenando por data de realização da consulta.*/
SELECT C.Data AS DataDaConsulta, 
(SELECT P.Nome FROM paciente AS P WHERE C.Paciente_id = P.idPaciente ) AS NomePaciente,
(SELECT E.Tipo FROM especialidade AS E WHERE C.Especialidade_id = E.idEspecialidade ) AS Especialidade
FROM consulta C WHERE C.Especialidade_id != 1 
AND (SELECT YEAR(C.Data)-YEAR(P.DataNascimento) FROM paciente AS P WHERE C.Paciente_id = P.idPaciente ) < 18
ORDER BY C.Data;