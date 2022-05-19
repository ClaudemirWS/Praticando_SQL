CREATE DATABASE stream_organizer;

USE stream_organizer;

CREATE TABLE Lista_de_Filmes (
    id_Filme INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Streaming_id INT NOT NULL,
    Genero_id INT NOT NULL,
    PRIMARY KEY (id_Filme)
);

CREATE TABLE Lista_de_Series (
    id_Serie INT NOT NULL AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Streaming_id INT NOT NULL,
    Genero_id INT NOT NULL,
    PRIMARY KEY (id_Serie)
);

CREATE TABLE Genero (
id_Genero INT NOT NULL AUTO_INCREMENT,
Nome VARCHAR(45) NOT NULL,
PRIMARY KEY (id_Genero)
);

CREATE TABLE Streaming (
id_Streaming INT NOT NULL AUTO_INCREMENT,
Nome VARCHAR(45) NOT NULL,
PRIMARY KEY (id_Streaming)
);

ALTER TABLE Lista_de_Filmes ADD FOREIGN KEY (Streaming_id) REFERENCES Streaming (id_Streaming);
ALTER TABLE Lista_de_Filmes ADD FOREIGN KEY (Genero_id) REFERENCES Genero (id_Genero);

ALTER TABLE Lista_de_Series ADD FOREIGN KEY (Streaming_id) REFERENCES Streaming (id_Streaming);
ALTER TABLE Lista_de_Series ADD FOREIGN KEY (Genero_id) REFERENCES Genero (id_Genero);