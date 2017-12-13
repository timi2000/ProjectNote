-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Erstellungszeit: 11. Dez 2017 um 14:27
-- Server-Version: 10.1.21-MariaDB
-- PHP-Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `SchoolDB`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Absence`
--

CREATE TABLE `Absence` (
  `Absence_id` int(255) NOT NULL,
  `Teacher_id` int(255) NOT NULL,
  `Student_id` int(255) NOT NULL,
  `Course_id` int(255) NOT NULL,
  `time` time NOT NULL,
  `Date` date NOT NULL,
  `note` varchar(255) NOT NULL,
  `reason` int(11) NOT NULL,
  `excused` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Class`
--

CREATE TABLE `Class` (
  `Class_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `Semester` int(255) NOT NULL,
  `Startjahr` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  `Student_id` int(11) NOT NULL,
  `Teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Class`
--

INSERT INTO `Class` (`Class_id`, `name`, `Semester`, `Startjahr`, `active`, `Student_id`, `Teacher_id`) VALUES
(1, 'c15', 8, '2015-08-22', 0, 0, 0),
(2, 'c16', 8, '2016-08-23', 0, 0, 0),
(3, 'c17', 8, '2017-08-24', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Course`
--

CREATE TABLE `Course` (
  `Course_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Grades`
--

CREATE TABLE `Grades` (
  `Grade_id` int(255) NOT NULL,
  `Student_id` int(11) NOT NULL,
  `Course_id` int(11) NOT NULL,
  `zp1` int(11) NOT NULL,
  `zp2` int(11) NOT NULL,
  `zp3` int(11) NOT NULL,
  `finalexam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Modul`
--

CREATE TABLE `Modul` (
  `Modul_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `Teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Modul`
--

INSERT INTO `Modul` (`Modul_id`, `name`, `Teacher_id`) VALUES
(1, 'Mathe', 0),
(2, 'M335', 0),
(3, 'englisch', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Students`
--

CREATE TABLE `Students` (
  `Student_id` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `picture` int(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `Grade_id` int(11) NOT NULL,
  `Absence_id` int(11) NOT NULL,
  `Class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Students`
--

INSERT INTO `Students` (`Student_id`, `firstname`, `lastname`, `email`, `street`, `place`, `picture`, `active`, `Grade_id`, `Absence_id`, `Class_id`) VALUES
(1, 'Tim', 'Widmer', 'tim_widmer@gmx.ch', 'Rosengartenhalde 4', 'luzern', 0, 0, 0, 0, 0),
(2, 'Tom', 'Walter', 'walter@email.com', 'rosenstrasse3', '6006 luzern', 0, 0, 0, 0, 0),
(3, 'hans', 'Hermann', 'Hermann@email.com', 'Musterstrasse 3', ' luzern', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Teacher`
--

CREATE TABLE `Teacher` (
  `Teacher_id` int(255) NOT NULL,
  `Firstname` varchar(255) NOT NULL,
  `Secondname` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Street` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `place` varchar(255) NOT NULL,
  `Course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `Teacher`
--

INSERT INTO `Teacher` (`Teacher_id`, `Firstname`, `Secondname`, `Email`, `Street`, `active`, `place`, `Course_id`) VALUES
(1, 'Marco', 'Glaus', 'Glaus@email.com', 'GlausStrasse', 0, 'Luzern', 0),
(2, 'Hand', 'Würdig', 'hans.würdig@email.com', 'Beispielstrasse 7', 0, ' beispielort', 0),
(3, 'Rene', 'Bäder', 'Rene@bäder.com', 'Bäderstrasse', 0, 'bäderort', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Teacher_Course`
--

CREATE TABLE `Teacher_Course` (
  `Teacher_id` int(255) NOT NULL,
  `Course_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
