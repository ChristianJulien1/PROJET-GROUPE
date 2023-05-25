create database Bibliotheque;

use Bibliotheque;

CREATE TABLE `Adherents` (
  `idAdherent` int(11) NOT NULL,
  `nomAdherent` varchar(60) NOT NULL,
  `adresseAdherent` varchar(60) NOT NULL,
  `naissanceAdherent` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `Adherents`
  ADD PRIMARY KEY (`idAdherent`);
 
 
ALTER TABLE `Adherents`
  MODIFY `idAdherent` int(11) NOT NULL AUTO_INCREMENT;
 
CREATE TABLE `Bibliotheques` (
  `idBiblio` int(11) NOT NULL,
  `nomBiblio` varchar(60) NOT NULL,
  `adresseBiblio` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `Bibliotheques`
  ADD PRIMARY KEY (`idBiblio`);
 
 
ALTER TABLE `Bibliotheques`
  MODIFY `idBiblio` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE `Ouvrages` (
  `idOuvrage` int(11) NOT NULL,
  `titreOuvrage` varchar(60) NOT NULL,
  `editionOuvrage` varchar(60) NOT NULL,
  `parutionOuvrage` date NOT NULL,
  `idRayon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `Ouvrages`
  ADD PRIMARY KEY (`idOuvrage`);
 
ALTER TABLE `Ouvrages`
  MODIFY `idOuvrage` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Ouvrages`
  ADD KEY `FK_ID_RAYON` (`idRayon`);

CREATE TABLE `Auteurs` (
  `idAuteur` int(11) NOT NULL,
  `nomAuteur` varchar(60) NOT NULL,
  `prenomAuteur` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `Auteurs`
  ADD PRIMARY KEY (`idAuteur`);
 
 
ALTER TABLE `Auteurs`
  MODIFY `idAuteur` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE `Rayons` (
  `idRayon` int(11) NOT NULL,
  `nomRayon` varchar(60) NOT NULL,
  `themeRayon` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `Rayons`
  ADD PRIMARY KEY (`idRayon`);
 
 
ALTER TABLE `Rayons`
  MODIFY `idRayon` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE `MotsCle` (
  `idMotCle` int(11) NOT NULL,
  `mot` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `MotsCle`
  ADD PRIMARY KEY (`idMotCle`);
 
 
ALTER TABLE `MotsCle`
  MODIFY `idMotCle` int(11) NOT NULL AUTO_INCREMENT;

CREATE TABLE `Exemplaires` (
  `idExemplaire` int(11) NOT NULL,
  `idOuvrage` int(11) NOT NULL,
  `idBiblio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `Exemplaires`
  ADD PRIMARY KEY (`idExemplaire`);
 
ALTER TABLE `Exemplaires`
  MODIFY `idExemplaire` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `Exemplaires`
  ADD KEY `FK_ID_OUVRAGE` (`idOuvrage`);

ALTER TABLE `Exemplaires`
  ADD KEY `FK_ID_BIBLIO` (`idBiblio`);

