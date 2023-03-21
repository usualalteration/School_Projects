CREATE DATABASE ricettario;

USE ricettario;

CREATE TABLE ingredienti(
    id_ingrediente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    ingrediente VARCHAR(30)
);

USE ricettario;

CREATE TABLE ricette(
    id_ricetta INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_ricetta VARCHAR (50),
    id_ingrediente INT,
    FOREIGN KEY (id_ingrediente) REFERENCES ingredienti(id_ingrediente),
    procedimento VARCHAR(255)
);

