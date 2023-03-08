CREATE DATABASE LIBRI;
USE LIBRI;

CREATE TABLE autori(
    codice VARCHAR(25),
    cf VARCHAR(25), /*non so cosa è cf*/
    cognome VARCHAR(25),
    nome VARCHAR(25),
    citta VARCHAR(30),
    PRIMARY KEY(codice)
);

CREATE TABLE libri(
    isbn VARCHAR(13), /*un codice ISBN é composto di 13 cifre*/
    titolo VARCHAR(30),
    FOREIGN KEY (autore) REFERENCES autori(nome),
    argomento VARCHAR(30),
    editore VARCHAR(25),
    anno YEAR,
    edizione VARCHAR(30),
    PRIMARY KEY(isbn) 
);