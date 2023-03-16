-- Creato il: Gio 16, 2023
-- Da Nicoletta Alba

--CREO IL DATABASE "ALBO_DIPLOMATI E MI COLLEGO A QUEL DATABASE"
CREATE DATABASE IF NOT EXISTS ALBO_DIPLOMATI;

USE ALBO_DIPLOMATI; --USO IL DATABASE (DA INSERIRE OGNI VOLTA CHE SI
--LANCIANO DELLE QUERY SEPARATAMENTE)

CREATE TABLE IF NOT EXISTS Diplomati(
    ID INT NOT NULL PRIMARY KEY,
    Cognome VARCHAR(20),
    Nome VARCHAR(20),
    Residenza VARCHAR(30),
    Anno_diploma int,
    Corso VARCHAR(30),
    Voto int
);

CREATE TABLE IF NOT EXISTS citta (
    idCitta int(11) NOT NULL,
    nomeCitta varchar(255) NOT NULL,
    cap varchar(5) NOT NULL,
    codiceCatastale varchar(4) NOT NULL,
    provincia int(11) NOT NULL
);

INSERT INTO citta (idCitta, nomeCitta, cap,
codiceCatastale, provincia) VALUES
(1, 'Agrigento', '92100', 'A089', 12),
(2, 'Alessandria della Rocca', '92010', 'A181', 12),
(3, 'Aragona', '92021', 'A351', 12),
(4, 'Bivona', '92010', 'A896', 12),
(5, 'Burgio', '92010', 'B275', 12),
(6, 'Calamonaci', '92010', 'B377', 12),
(7, 'Caltabellotta', '92010', 'B427', 12),
(8, 'Camastra', '92020', 'B460', 12),
(9, 'Cammarata', '92022', 'B486', 12),
(10, 'Campobello di Licata', '92023', 'B520', 12),
(11, 'Canicatti', '92024', 'D602', 12),
(12, 'Casteltermini', '92025', 'C275', 12),
(13, 'Castrofilippo', '92020', 'C341', 12),
(14, 'Cattolica Eraclea', '92011', 'C356', 12),
(15, 'Cianciana', '92012', 'C668', 12),
(16, 'Comitini', '92020', 'C928', 12),
(17, 'Favara', '92026', 'D514', 12),
(18, 'Grotte', '92020', 'E209', 12),
(19, 'Joppolo Giancaxio', '92010', 'E390', 12),
(20, 'Lampedusa e Linosa', '92010', 'E431', 12),
(21, 'Licata', '92027', 'E573', 12),
(22, 'Lucca Sicula', '92010', 'E714', 12),
(23, 'Menfi', '92013', 'F126', 12),
(24, 'Montallegro', '92010', 'F414', 12),
(25, 'Montevago', '92010', 'F655', 12),
(26, 'Naro', '92028', 'F845', 12),
(27, 'Palma di Montechiaro', '92020', 'G282', 12),
(28, 'Porto Empedocle', '92014', 'F299', 12),
(29, 'Racalmuto', '92020', 'H148', 12),
(30, 'Raffadali', '92015', 'H159', 12),
(31, 'Ravanusa', '92029', 'H194', 12),
(32, 'Realmonte', '92010', 'H205', 12),
(33, 'Ribera', '92016', 'H269', 12),
(34, 'Sambuca di Sicilia', '92017', 'H743', 12),
(35, 'San Biagio Platani', '92020', 'H778', 12),
(36, 'San Giovanni Gemini', '92020', 'H914', 12),
(37, 'Sant Angelo Muxaro', '92020', 'I290', 12),
(38, 'Santa Elisabetta', '92020', 'I185', 12),
(39, 'Santa Margherita di Belice', '92018', 'I224', 12),
(40, 'Santo Stefano Quisquina', '92020', 'I356', 12),
(41, 'Sciacca', '92019', 'I533', 12),
(42, 'Siculiana', '92010', 'I723', 12),
(43, 'Villafranca Sicula', '92020', 'L944', 12);

INSERT INTO Diplomati (ID, Cognome,Nome, Residenza, Anno_diploma, Corso, Voto) VALUES
(1, 'Rossi', 'Mario', 'Via Roma 4', 1999, 'Meccatronica', 94),
(2, 'Verdi', 'Giuseppe','Viale Lazio 34', 2023, 'Informatica', 100),
(3, 'Manzoni', 'Alessandro', 'Via Dante 102', 2007, 'Elettrotecnica', 85),
(4, 'Milano', 'Paolo', 'Via Agrigento 110', 2018, 'Meccatronica', 82);