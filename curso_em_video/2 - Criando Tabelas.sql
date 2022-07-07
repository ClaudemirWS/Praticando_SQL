CREATE TABLE pessoas (
	id INT NOT NULL AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
    nascimento date,
    sexo ENUM('M','F'), 
    peso DECIMAL(5,2),
    altura DECIMAL(3,2),
    nacionalidade VARCHAR(20) DEFAULT 'BRASIL',
    PRIMARY KEY (id)
) DEFAULT CHARSET = utf8;