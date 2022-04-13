USE clinica;

INSERT INTO tipo_quarto(Descricao,ValorDiaria) VALUES ('Apartamento',350);
INSERT INTO tipo_quarto(Descricao,ValorDiaria) VALUES ('Quarto Duplo',250);
INSERT INTO tipo_quarto(Descricao,ValorDiaria) VALUES ('Enfermaria',150);

INSERT INTO tipos_de_medicos(Tipo) VALUES ('Especialistas');
INSERT INTO tipos_de_medicos(Tipo) VALUES ('Generalistas');
INSERT INTO tipos_de_medicos(Tipo) VALUES ('Residentes');

INSERT INTO especialidade(Tipo) VALUES ('Pediatria');
INSERT INTO especialidade(Tipo) VALUES ('ClinicaGeral');
INSERT INTO especialidade(Tipo) VALUES ('Gastroenterologia');
INSERT INTO especialidade(Tipo) VALUES ('Dermatologia');

INSERT INTO quarto (idQuarto, Numero, idTipo_Quarto) 
VALUES (1, 01, 1);

INSERT INTO quarto (idQuarto, Numero, idTipo_Quarto) 
VALUES (2, 02, 1);

INSERT INTO quarto (idQuarto, Numero, idTipo_Quarto) 
VALUES (3, 03, 2);

INSERT INTO quarto (idQuarto, Numero, idTipo_Quarto) 
VALUES (4, 04, 2);

INSERT INTO quarto (idQuarto, Numero, idTipo_Quarto) 
VALUES (5, 05, 3);

INSERT INTO quarto (idQuarto, Numero, idTipo_Quarto) 
VALUES (6, 06, 3);

INSERT INTO convenio (idConvenio, Nome, Carteira, CNPJ, Tempo_carencia) 
	VALUES (1, 'Sem Convênio', '0', 0, 0);

INSERT INTO convenio (idConvenio, Nome, Carteira, CNPJ, Tempo_carencia) 
	VALUES (2, 'Sempre Sáude', '9976731-76', 63158403000183, 2);
    
INSERT INTO convenio (idConvenio, Nome, Carteira, CNPJ, Tempo_carencia) 
	VALUES (3, 'Cuidando de Você', '2131651-12', 62468754000128, 1);
    
INSERT INTO convenio (idConvenio, Nome, Carteira, CNPJ, Tempo_carencia) 
	VALUES (4, 'MediClass', '3079804-30', 31632366000107, 3);
    
INSERT INTO convenio (idConvenio, Nome, Carteira, CNPJ, Tempo_carencia) 
	VALUES (5, 'SaúdePlus', '9386863-48', 71840055000158, 2);

INSERT INTO medico (idMedico, Nome, Estado, Nascimento, Telefone, CPF, CRM, idTipo_Medico) 
	VALUES (1,'Aledio Peixoto Campos','PE',19961212,'(81) 3167-5915','651.637.563-11',1400217-52,1);
    
INSERT INTO medico (idMedico, Nome, Estado, Nascimento, Telefone, CPF, CRM, idTipo_Medico) 
	VALUES (2,'Josildo Lima Fausto','PE',19700719,'(81) 3251-8449','463.734.951-67',9945443-24,1);
    
INSERT INTO medico (idMedico, Nome, Estado, Nascimento, Telefone, CPF, CRM, idTipo_Medico) 
	VALUES (3,'Fellipe Lessa Pimenta','PE',19730526,'(81) 3936-4810','342.241.734-68',1781342-52,2);

INSERT INTO medico (idMedico, Nome, Estado, Nascimento, Telefone, CPF, CRM, idTipo_Medico) 
	VALUES (4,'Regina Santos Theodoro','PE',19841127,'(81) 3724-8157','852.474.714-58',4118568-47,1);

INSERT INTO medico (idMedico, Nome, Estado, Nascimento, Telefone, CPF, CRM, idTipo_Medico) 
	VALUES (5,'Moana Constantino Avilla','PE',19850724,'(81) 3141-6404','903.865.234-87',8014809-30,1);

INSERT INTO medico (idMedico, Nome, Estado, Nascimento, Telefone, CPF, CRM, idTipo_Medico) 
	VALUES (6,'Diogo Paes Ascar','PE',19580330,'(81) 3842-7733','104.660.474-01',5195976-30,3);

INSERT INTO medico (idMedico, Nome, Estado, Nascimento, Telefone, CPF, CRM, idTipo_Medico) 
	VALUES (7,'Raiane Felix Garbelini','PE',19590425,'(81) 3421-7103','856.161.414-53',1814401-21,3);

INSERT INTO medico (idMedico, Nome, Estado, Nascimento, Telefone, CPF, CRM, idTipo_Medico) 
	VALUES (8,'Pietro Mendes Coutinho','PE',19761008,'(81) 3509-5121','023.877.554-21',1457457-83,3);

INSERT INTO medico (idMedico, Nome, Estado, Nascimento, Telefone, CPF, CRM, idTipo_Medico) 
	VALUES (9,'Maria Eliza Rodrigues Paes','PE',19810107,'(81) 3176-1759','791.837.694-39',7570918-06,2);

INSERT INTO medico (idMedico, Nome, Estado, Nascimento, Telefone, CPF, CRM, idTipo_Medico) 
	VALUES (10,'Juliete Arlia Giacomini','PE',19821220,'(81) 3277-3763','212.363.474-39',8483490-08,2);

INSERT INTO medico_tem_especialidade (id_Medico, id_Especialidade) 
	VALUES (1,1);

INSERT INTO medico_tem_especialidade (id_Medico, id_Especialidade) 
	VALUES (2,1);
    
INSERT INTO medico_tem_especialidade (id_Medico, id_Especialidade) 
	VALUES (3,2);
    
INSERT INTO medico_tem_especialidade (id_Medico, id_Especialidade) 
	VALUES (4,2);
    
INSERT INTO medico_tem_especialidade (id_Medico, id_Especialidade) 
	VALUES (5,2);

INSERT INTO medico_tem_especialidade (id_Medico, id_Especialidade) 
	VALUES (6,3);
    
INSERT INTO medico_tem_especialidade (id_Medico, id_Especialidade) 
	VALUES (7,3);
    
INSERT INTO medico_tem_especialidade (id_Medico, id_Especialidade) 
	VALUES (8,4);
    
INSERT INTO medico_tem_especialidade (id_Medico, id_Especialidade) 
	VALUES (9,4);
    
INSERT INTO medico_tem_especialidade (id_Medico, id_Especialidade) 
	VALUES (10,4);

INSERT INTO enfermeiro (idEnfermeiro, Nome, CPF, CRE) 
	VALUES (1,'Ivania Thomaz Coelho','454.023.334-32','5836290-83');

INSERT INTO enfermeiro (idEnfermeiro, Nome, CPF, CRE) 
	VALUES (2,'Kelly de Padua dos Santos','231.580.204-08','6079154-39');
    
INSERT INTO enfermeiro (idEnfermeiro, Nome, CPF, CRE) 
	VALUES (3,'Fransiscano dos Santos Rodrigues','978.748.684-04','7402486-85');
    
INSERT INTO enfermeiro (idEnfermeiro, Nome, CPF, CRE) 
	VALUES (4,'Rosangela Baesso Pinho','313.674.614-72','6092224-90');
    
INSERT INTO enfermeiro (idEnfermeiro, Nome, CPF, CRE) 
	VALUES (5,'Marly Trindade Fundão','571.345.144-55','3751062-27');
    
INSERT INTO enfermeiro (idEnfermeiro, Nome, CPF, CRE) 
	VALUES (6,'Tânia Vogas Linhares','626.605.754-95','2354588-72');
    
INSERT INTO enfermeiro (idEnfermeiro, Nome, CPF, CRE) 
	VALUES (7,'Maria Aline Barher Pontes','795.326.134-04','2351813-82');
    
INSERT INTO enfermeiro (idEnfermeiro, Nome, CPF, CRE) 
	VALUES (8,'Armando Brito Paulino','972.539.874-20','7516189-34');
    
INSERT INTO enfermeiro (idEnfermeiro, Nome, CPF, CRE) 
	VALUES (9,'Elisângela Santomauro Esteves','505.691.584-00','9983836-27');
    
INSERT INTO enfermeiro (idEnfermeiro, Nome, CPF, CRE) 
	VALUES (10,'Lina Azevedo Moraes','474.366.844-18','2758054-76');