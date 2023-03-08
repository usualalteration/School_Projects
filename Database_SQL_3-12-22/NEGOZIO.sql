CREATE DATABASE NEGOZIO;
USE NEGOZIO;

CREATE TABLE dipendenti(
    ID_dipendente int not null AUTO_INCREMENT,
    cognome VARCHAR(25),
    nome VARCHAR(25),
    data_nascita DATE,
    cap VARCHAR(5),
    citta VARCHAR(30),
    anzianita int,
    id_reparto int AUTO_INCREMENT,
    PRIMARY KEY(ID_dipendente)
);

CREATE TABLE reparti(
    FOREIGN KEY (ID_reparto) REFERENCES dipendenti(id_reparto),
    nome_reparto VARCHAR(25),
    cod_responsabile int
);