USE clinica;

ALTER TABLE medico ADD EmAtividade CHAR NOT NULL;

UPDATE medico SET EmAtividade = 'S' WHERE IdMedico BETWEEN 1 AND 4;
UPDATE medico SET EmAtividade = 'S' WHERE IdMedico BETWEEN 6 AND 9;
UPDATE medico SET EmAtividade = 'N' WHERE IdMedico = 5;
UPDATE medico SET EmAtividade = 'N' WHERE IdMedico = 10;