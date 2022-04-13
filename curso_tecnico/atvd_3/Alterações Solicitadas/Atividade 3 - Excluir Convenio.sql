USE clinica;

DELETE FROM consulta WHERE NomeConvenio = 'SaúdePlus';
ALTER TABLE paciente DROP FOREIGN KEY paciente_ibfk_1;
UPDATE paciente SET id_Convenio = 1 WHERE id_Convenio = 5;
DELETE FROM convenio WHERE idConvenio = 5;