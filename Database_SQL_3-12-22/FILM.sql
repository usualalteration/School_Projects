CREATE DATABASE FILM;
USE FILM;

CREATE TABLE cinema(
    codice int NOT NULL,
    nome VARCHAR(40) NOT NULL,
    indirizzo VARCHAR(30),
    citta VARCHAR(30),
    PRIMARY KEY(codice)
);

CREATE TABLE film(
    ID_film int NOT NULL,
    titolo VARCHAR(25) NOT NULL,
    data_produzione DATE,
    nazione VARCHAR(25),
    regista VARCHAR(25) NOT NULL,
    durata TIME,
    genere VARCHAR(25),
    PRIMARY KEY(ID_film)
);

CREATE TABLE proiezioni(
    codice INT NOT NULL AUTO_INCREMENT,
    FOREIGN KEY id_film REFERENCES film(ID_film),
    data DATE,
    orario TIME,
    PRIMARY KEY(codice)
);

CREATE TABLE registi(
    ID_regista INT NOT NULL AUTO_INCREMENT,
    FOREIGN KEY nome REFERENCES film(registi),
    cognome VARCHAR(25) NOT NULL,
    data_nascita DATE,
    data_morte DATE,
    nazionalita varchar(25),
    PRIMARY KEY(ID_regista)
);