CREATE DATABASE CALCIO;
USE CALCIO;

CREATE TABLE squadre(
    ID_squadra int NOT NULL AUTO_INCREMENT,
    nome VARCHAR(25) NOT NULL,
    citta VARCHAR(25) NOT NULL,
    id_stadio int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(ID_squadra)
);

CREATE TABLE stadi(
    FOREIGN KEY(ID_stadio) REFERENCES squadre(ID_stadio),
    nome VARCHAR(25) NOT NULL,
    citta VARCHAR(25) NOT NULL,
    PRIMARY KEY(ID_stadio)
);

CREATE TABLE partite(
    giornata DATE,
    squadra_casa VARCHAR(25) NOT NULL,
    squadra_ospite VARCHAR(25) NOT NULL,
    goal_sqcasa INT NOT NULL,
    goal_sqospite INT NOT NULL,
    PRIMARY KEY(giornata)
);

CREATE TABLE classifiche(
    FOREIGN KEY (giornata) REFERENCES partite(giornata),
    FOREIGN KEY (squadra) REFERENCES squadre(nome),
    punti INT NOT NULL,
    posizione INT NOT NULL,
    PRIMARY KEY(giornata)
);