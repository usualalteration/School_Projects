-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mar 12, 2021 alle 09:46
-- Versione del server: 10.4.11-MariaDB
-- Versione PHP: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `utenze`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `citta`
--

CREATE TABLE `citta` (
  `idCitta` int(11) NOT NULL,
  `nomeCitta` varchar(255) NOT NULL,
  `cap` varchar(5) NOT NULL,
  `codiceCatastale` varchar(4) NOT NULL,
  `provincia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `citta`
--

INSERT INTO `citta` (`idCitta`, `nomeCitta`, `cap`, `codiceCatastale`, `provincia`) VALUES
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

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `idUtente` int(11) NOT NULL,
  `cognome` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `citta` int(11) NOT NULL,
  `indirizzo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`idUtente`, `cognome`, `nome`, `citta`, `indirizzo`) VALUES
(1, 'Rossi', 'Mario', 1, 'Via Roma 4'),
(2, 'Verdi', 'Giuseppe', 2, 'Viale Lazio 34'),
(3, 'Manzoni', 'Alessandro', 1, 'Via Dante 102'),
(4, 'Milano', 'Paolo', 15, 'Via Agrigento 110');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `citta`
--
ALTER TABLE `citta`
  ADD PRIMARY KEY (`idCitta`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`idUtente`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `citta`
--
ALTER TABLE `citta`
  MODIFY `idCitta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT per la tabella `utenti`
--
ALTER TABLE `utenti`
  MODIFY `idUtente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
