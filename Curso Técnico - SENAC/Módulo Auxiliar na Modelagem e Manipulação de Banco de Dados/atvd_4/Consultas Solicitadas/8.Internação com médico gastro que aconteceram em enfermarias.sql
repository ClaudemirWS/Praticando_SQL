/*8. Nome do paciente, nome do médico, data da internação e procedimentos das internações realizadas por médicos 
da especialidade “gastroenterologia”, que tenham acontecido em “enfermaria”.*/
SELECT 
(SELECT P.Nome FROM paciente AS P WHERE I.id_paciente = P.idPaciente) AS NomePaciente,
(SELECT M.Nome FROM medico AS M WHERE I.id_Medico = M.idMedico) AS NomeMedico,
I.DataEntrada, I.Procedimento
FROM internacao I 
WHERE I.idTipo_Quarto = 3 AND
(SELECT E.Tipo FROM especialidade E WHERE idEspecialidade = 
(SELECT TM.idTipo_Medico FROM medico AS TM WHERE I.id_Medico = TM.idMedico)) = 'Gastroenterologia';