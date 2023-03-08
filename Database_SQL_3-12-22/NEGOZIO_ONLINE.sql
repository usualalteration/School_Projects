CREATE DATABASE NEGOZIO_ONLINE;
USE NEGOZIO_ONLINE;

CREATE TABLE clienti(
    ID_cliente int NOT NULL AUTO_INCREMENT,
    cognome VARCHAR(25),
    nome VARCHAR(25),
    citta VARCHAR(25),
    sconto FLOAT,
    PRIMARY KEY(ID_cliente)
);

CREATE TABLE agenti(
    ID_agente int NOT NULL AUTO_INCREMENT,
    cognome VARCHAR(25),
    nome VARCHAR(25),
    zona VARCHAR(25),
    supervisore VARCHAR(50),
    PRIMARY KEY(ID_agente)
);

CREATE TABLE ordini(
    num_ordine int NOT NULL AUTO_INCREMENT,
    FOREIGN KEY (id_cliente) REFERENCES clienti(ID_cliente),
    FOREIGN KEY (id_agente) REFERENCES agenti(ID_agente),
    data DATE,
    prodotto VARCHAR(30),
    importo FLOAT,
    PRIMARY KEY(num_ordine)
);