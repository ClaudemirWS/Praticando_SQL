CREATE DATABASE clinica;

USE clinica;

CREATE TABLE medico (
    idMedico INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(45),
    Estado VARCHAR(45),
    Nascimento DATE NOT NULL,
    Telefone INT NOT NULL,
    CPF INT NOT NULL,
    CRM INT NOT NULL,
    idTipo_Medico INT NOT NULL,
    PRIMARY KEY (idMedico)
);

CREATE TABLE tipos_de_medicos (
    idTipo INT NOT NULL AUTO_INCREMENT,
    Especialistas VARCHAR(45),
    Generalistas VARCHAR(45),
    Residentes VARCHAR(45),
    PRIMARY KEY (idTipo)
);
	   
ALTER TABLE medico ADD FOREIGN KEY (idTipo_Medico) REFERENCES tipos_de_medicos (idTipo);

CREATE TABLE especialidade (
    idEspecialidade INT NOT NULL AUTO_INCREMENT,
    Pediatria VARCHAR(45),
    ClinicaGeral VARCHAR(45),
    Gastroenterologia VARCHAR(45),
    Dermatologia VARCHAR(45),
    PRIMARY KEY (idEspecialidade)
);

CREATE TABLE medico_tem_especialidade (
    id_Medico INT NOT NULL,
    id_Especialidade INT NOT NULL,
    FOREIGN KEY (id_Medico)
        REFERENCES medico (idMedico),
    FOREIGN KEY (id_Especialidade)
        REFERENCES especialidade (idEspecialidade),
    PRIMARY KEY (id_Medico , id_Especialidade)
);

CREATE TABLE paciente (
    idPaciente INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    DataNascimento DATE NOT NULL,
    Endereco VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    Telefone INT NOT NULL,
    RG INT NOT NULL,
    CPF INT NOT NULL,
    id_Convenio INT NOT NULL,
    PRIMARY KEY (idPaciente)
);

CREATE TABLE convenio (
    idConvenio INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Carteira INT NOT NULL,
    CNPJ INT NOT NULL,
    Tempo_carencia INT NOT NULL,
    PRIMARY KEY (idConvenio)
);
	   
ALTER TABLE paciente ADD FOREIGN KEY (id_Convenio) REFERENCES convenio (idConvenio);

CREATE TABLE consulta (
    idConsulta INT NOT NULL AUTO_INCREMENT,
    Data DATE NOT NULL,
    Hora TIME NOT NULL,
    ValorConsulta FLOAT NOT NULL,
    NumeroCarteira INT NOT NULL,
    Nome_do_convenio VARCHAR(45) NOT NULL,
    Medico_id INT NOT NULL,
    Especialidade_id INT NOT NULL,
    Paciente_id INT NOT NULL,
    PRIMARY KEY (idConsulta)
);

ALTER TABLE consulta ADD FOREIGN KEY (Medico_id) REFERENCES medico (idMedico);
ALTER TABLE consulta ADD FOREIGN KEY (Especialidade_id) REFERENCES especialidade (idEspecialidade);
ALTER TABLE consulta ADD FOREIGN KEY (Paciente_id) REFERENCES paciente (idPaciente);

CREATE TABLE receita (
    idReceita INT NOT NULL AUTO_INCREMENT,
    Medicamento VARCHAR(45) NOT NULL,
    Instrucoes_de_uso VARCHAR(45) NOT NULL,
    Quantidade INT NOT NULL,
    Consulta_id INT NOT NULL,
    PRIMARY KEY (idReceita)
);

ALTER TABLE receita ADD FOREIGN KEY (Consulta_id) REFERENCES consulta (idConsulta);

CREATE TABLE internacao (
    idInternacao INT NOT NULL AUTO_INCREMENT,
    DataEntrada DATE NOT NULL,
    DataPrevAlta DATE NOT NULL,
    DataAlta DATE NOT NULL,
    Procedimento VARCHAR(45) NOT NULL,
    id_Medico INT NOT NULL,
    id_Paciente INT NOT NULL,
    id_Convenio INT NOT NULL,
    id_Quarto INT NOT NULL,
    idTipo_Quarto INT NOT NULL,
    PRIMARY KEY (idInternacao)
);

ALTER TABLE internacao ADD FOREIGN KEY (id_Medico) REFERENCES medico (idMedico);
ALTER TABLE internacao ADD FOREIGN KEY (id_Paciente) REFERENCES paciente (idPaciente);
ALTER TABLE internacao ADD FOREIGN KEY (id_Convenio) REFERENCES convenio (idConvenio);

CREATE TABLE quarto (
    idQuarto INT NOT NULL AUTO_INCREMENT,
    Numero INT NOT NULL,
    Tipo VARCHAR(45) NOT NULL,
    idTipo_Quarto INT NOT NULL,
    PRIMARY KEY (idQuarto)
);

CREATE TABLE tipo_quarto (
    idTipoQuarto INT NOT NULL AUTO_INCREMENT,
    Apartamentos INT,
    Quartos_Duplos INT,
    Enfermaria INT,
    Descricao VARCHAR(45) NOT NULL,
    ValorDiaria FLOAT NOT NULL,
    PRIMARY KEY (idTipoQuarto)
);

ALTER TABLE quarto ADD FOREIGN KEY (idTipo_Quarto) REFERENCES tipo_quarto (idTipoQuarto);
ALTER TABLE internacao ADD FOREIGN KEY (id_Quarto) REFERENCES quarto (idQuarto);
ALTER TABLE internacao ADD FOREIGN KEY (idTipo_Quarto) REFERENCES tipo_quarto (idTipoQuarto);

CREATE TABLE enfermeiro (
    idEnfermeiro INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    CPF INT NOT NULL,
    CRE INT NOT NULL,
    PRIMARY KEY (idEnfermeiro)
);

CREATE TABLE internacao_tem_enfermeiro (
    id_Internacao INT NOT NULL,
    id_Quarto INT NOT NULL,
    idTipo_Quarto INT NOT NULL,
    id_Enfermeiro INT NOT NULL,
    FOREIGN KEY (id_Internacao)
        REFERENCES internacao (idInternacao),
    FOREIGN KEY (id_Quarto)
        REFERENCES quarto (idQuarto),
    FOREIGN KEY (idTipo_Quarto)
        REFERENCES tipo_quarto (idTipoQuarto),
    FOREIGN KEY (id_Enfermeiro)
        REFERENCES enfermeiro (idEnfermeiro),
    PRIMARY KEY (id_Internacao , id_Quarto , idTipo_Quarto , id_Enfermeiro)
);
