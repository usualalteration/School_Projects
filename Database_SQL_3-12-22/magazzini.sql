-- ISTRUZIONI N.0
CREATE DATABASE MAGAZZINI;
USE MAGAZZINI;

-- ISTRUZIONE N.1
CREATE TABLE GENERI(
    COD_GENERE int NOT NULL AUTO_INCREMENT,
    DESCRIZIONE VARCHAR(25),
    PRIMARY KEY(COD_GENERE)
);

-- ISTRUZIONE N.2
CREATE TABLE PRODOTTI(
    COD_PRODOTTO int NOT NULL AUTO_INCREMENT,
    NOME VARCHAR(20),
    PREZZO FLOAT,
    PRIMARY KEY(COD_PRODOTTO)
);

-- ISTRUZIONE N.3
ALTER TABLE PRODOTTI ADD CONSTRAINT GENERE
FOREIGN KEY(COD_GENERE)
REFERENCES GENERI(COD_GENERE);

-- ISTRUZIONE N.6
INSERT INTO 'GENERI'('DESCRIZIONE') VALUES('Cosmetici');

-- ISTRUZIONE N.7
INSERT INTO 'PRODOTTI'('NOME','GENERI')
VALUES('Rossetto','Cosmetici');

-- ISTRUZIONE N.8
UPDATE 'PRODOTTI' SET 'PREZZO' = '7,50' WHERE 'NOME' = 'Rossetto';

-- ISTRUZIONE N.9
DELETE FROM 'PRODOTTI' WHERE 'NOME' = 'Rossetto';

-- ISTRUZIONE N.10
ALTER TABLE PRODOTTI DROP COLUMN GENERE;

-- ISTRUZIONE N.11
ALTER TABLE PRODOTTI ADD COLUMN REPARTO INT;

-- ISTRUZIONE N.12
ALTER TABLE PRODOTTI ADD COLUMN SCORTE INT;

-- ISTRUZIONE N.4
DROP TABLE PRODOTTI;

-- SCUSATE DOVEVO FARLO, FINALE COL BOTTO
DROP DATABASE MAGAZZINI;


