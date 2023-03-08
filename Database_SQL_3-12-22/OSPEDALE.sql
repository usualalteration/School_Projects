CREATE DATABASE OSPEDALE;
USE OSPEDALE;

CREATE TABLE pazienti(
    codice int NOT NULL,
    cognome VARCHAR(25) NOT NULL,
    nome VARCHAR(25) NOT NULL,
    tessera_sanitaria VARCHAR(14),
    data_nascita DATE,
    PRIMARY KEY(codice)
);

CREATE TABLE medici(
    matricola int NOT NULL,
    cognome VARCHAR(25) NOT NULL,
    nome VARCHAR(25) NOT NULL,
    reparto VARCHAR(25),
    specializzazione VARCHAR(25),
    PRIMARY KEY(matricola)
);

CREATE TABLE reparti(
    codice INT NOT NULL AUTO_INCREMENT,
    descrizione VARCHAR(70) NOT NULL,
    FOREIGN KEY nome REFERENCES medici(reparto),
    primario VARCHAR(50) NOT NULL,
    PRIMARY KEY(codice)
);

CREATE TABLE specializzazioni(
    FOREIGN KEY descrizione REFERENCES reparti(descrizione)
    PRIMARY KEY(descrizione)
);