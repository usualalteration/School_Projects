CREATE DATABASE IMMOBILI;
USE IMMOBILI;

CREATE TABLE proprietari(
    codice_fiscale int NOT NULL,
    cognome VARCHAR(25) NOT NULL,
    nome VARCHAR(25) NOT NULL,
    telefono int NOT NULL,
    PRIMARY KEY(codice_fiscale)
);

CREATE TABLE appartamenti(
    ID_unita int NOT NULL AUTO_INCREMENT,
    id_edificio int NOT NULL AUTO_INCREMENT,
    tipologia VARCHAR(25) NOT NULL, 
    locali VARCHAR(25),
    metratura FLOAT,
    piano INT,
    costo FLOAT,
    PRIMARY KEY(ID_unita)
);

CREATE TABLE edifici(
    FOREIGN KEY ID_edificio REFERENCES edifici(id_edificio),
    nome VARCHAR(25) NOT NULL,
    indirizzo VARCHAR(40),
    num_piani int,
    amministratore VARCHAR(50),
    PRIMARY KEY(ID_edificio)
);

CREATE TABLE clienti(
    codice_fiscale VARCHAR(14) NOT NULL,
    cognome VARCHAR(25) NOT NULL,
    nome VARCHAR(25) NOT NULL,
    residenza VARCHAR(40),
    telefono int NOT NULL,
    PRIMARY KEY(codice_fiscale)
);