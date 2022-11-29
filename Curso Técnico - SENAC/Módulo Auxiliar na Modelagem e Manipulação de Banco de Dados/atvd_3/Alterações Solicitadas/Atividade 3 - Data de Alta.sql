USE clinica;

UPDATE internacao SET DataAlta = DataEntrada + 3 WHERE IdInternacao BETWEEN 1 AND 7;