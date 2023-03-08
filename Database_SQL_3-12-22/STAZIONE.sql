CREATE DATABASE STAZIONE;
USE STAZIONE;

CREATE TABLE treni(
    numero int NOT NULL,
    giorno DAY NOT NULL,
    ora HOUR NOT NULL,
    destinazione VARCHAR(30) NOT NULL UNIQUE,
    categoria VARCHAR(25) NOT NULL UNIQUE,
    PRIMARY KEY(numero)
);

CREATE TABLE reparti(
    treno VARCHAR(25) NOT NULL,
    FOREIGN KEY (stazione) REFERENCES treni(destinazione) NOT NULL,
    ora HOUR NOT NULL UNIQUE,
    PRIMARY KEY(treno)
);