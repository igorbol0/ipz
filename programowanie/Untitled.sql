CREATE TABLE `Uzytkownik` (
  `ID` int AUTO_INCREMENT PRIMARY KEY,
  `Imie` varchar(50),
  `Nazwisko` varchar(50),
  `Email` varchar(100)
);

CREATE TABLE `Pojazd` (
  `ID` int AUTO_INCREMENT PRIMARY KEY,
  `Nazwa` varchar(50),
  `Model` varchar(50),
  `Status` varchar(20),
  `Uzytkownik_ID` int
);

CREATE TABLE `Zdarzenie` (
  `ID` int AUTO_INCREMENT PRIMARY KEY,
  `Typ` varchar(50),
  `Opis` text,
  `Czas` datetime,
  `Pojazd_ID` int
);

CREATE TABLE `Stan_Baterii` (
  `ID` int AUTO_INCREMENT PRIMARY KEY,
  `Poziom` int,
  `Napięcie` float,
  `Czas_pomiaru` datetime,
  `Pojazd_ID` int
);

CREATE TABLE `Przejazdy` (
  `ID` int AUTO_INCREMENT PRIMARY KEY,
  `Data` datetime,
  `Liczba_przejazdow` int,
  `Pojazd_ID` int
);

ALTER TABLE `Pojazd` ADD FOREIGN KEY (`Uzytkownik_ID`) REFERENCES `Uzytkownik` (`ID`);

ALTER TABLE `Zdarzenie` ADD FOREIGN KEY (`Pojazd_ID`) REFERENCES `Pojazd` (`ID`);

ALTER TABLE `Stan_Baterii` ADD FOREIGN KEY (`Pojazd_ID`) REFERENCES `Pojazd` (`ID`);

ALTER TABLE `Przejazdy` ADD FOREIGN KEY (`Pojazd_ID`) REFERENCES `Pojazd` (`ID`);
