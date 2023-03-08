CREATE DATABASE RICETTARIO;
USE RICETTARIO;

CREATE TABLE Ricette(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nome_ricetta TEXT NOT NULL,
    ingredienti TEXT NOT NULL,
    istruzioni TEXT NOT NULL,
    tempo TIME,
    porzioni INT NOT NULL,
    note TEXT,
    categoria VARCHAR(255)
);

CREATE TABLE Ingredienti(
    id INTEGER PRIMARY KEY,
    id_ricetta INTEGER NOT NULL,
    ingredienti varchar(60) NOT NULL,
    FOREIGN KEY(id_ricetta)
    REFERENCES ricette(id)
);

CREATE TABLE Categorie(
    FOREIGN KEY (id_ricetta) REFERENCES Ricette(id_ricetta) PRIMARY KEY,
    FOREIGN KEY (categoria) REFERENCES Ricette(categoria),
    descrizione VARCHAR(300)
);

