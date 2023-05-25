INSERT INTO `Adherents` (`idAdherent`, `nomAdherent`, `adresseAdherent`,`naissanceAdherent`) VALUES
(1, 'Salton Marius', '2 rue Popelope 41862 Loper-sur-rue','1992-05-22'),
(2, 'Bellepheili Andrea', '68 avenue de la Martinez 66895 Fiuuuuu-sur-pignon','2001-12-15'),
(3, 'Roblochon Stouff', '102 Roadway Street 32540 Vraiment-in-France','2010-01-02');
 
 INSERT INTO `Bibliotheques` (`idBiblio`, `nomBiblio`, `adresseBiblio`) VALUES
(1, 'Poulouland', '25 rue CLaStreet 41862 Loper-sur-rue'),
(2, 'Le Martiné', '2 rue à côté de la Martinez 66895 Fiuuuuu-sur-pignon'),
(3, 'English4Ever', 'kelkeparIn Roadway Avenue 32540 Vraiment-in-France');
 
 INSERT INTO `Ouvrages` (`idOuvrage`, `titreOuvrage`, `editionOuvrage`,`parutionOuvrage`,`idRayon`) VALUES
(1, 'ChuGoogoleMoi', 'LbcKev Studio','2002-05-15',1),
(2, 'Karma sous le train', 'Lukas','2010-06-01',3),
(3, 'Same Sumgs', 'AutantDire','2022-01-30',4);
 
 INSERT INTO `Auteurs` (`idAuteur`, `nomAuteur`, `prenomAuteur`) VALUES
(1, 'Quinn', 'Harley'),
(2, 'Bouda', 'Jean-luc'),
(3, 'Poulet', 'Pignon');

INSERT INTO `Rayons` (`idRayon`, `nomRayon`, `themeRayon`) VALUES
(1, 'A', 'Animalier'),
(2, 'B', 'Scientifique'),
(3, 'C', 'Fantaisie'),
(4, 'D', 'Futuriste');

INSERT INTO `MotsCle` (`idMotCle`, `mot`) VALUES
(1, 'Animaux'),
(2, 'Futur'),
(3, 'Fée'),
(4, "Nombre d'or");

INSERT INTO `Exemplaires` (`idExemplaire`,`idOuvrage`,`idBiblio`) VALUES
(1,1,1),
(2,3,2),
(3,1,2),
(4,2,2),
(5,3,3),
(6,1,2),
(7,3,1);
