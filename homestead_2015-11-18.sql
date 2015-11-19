# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Hôte: 127.0.0.1 (MySQL 5.7.9)
# Base de données: homestead
# Temps de génération: 2015-11-18 11:38:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Affichage de la table artistes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `artistes`;

CREATE TABLE `artistes` (
  `Nom` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `Image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `artistes` WRITE;
/*!40000 ALTER TABLE `artistes` DISABLE KEYS */;

INSERT INTO `artistes` (`Nom`, `Description`, `Image`, `Tags`, `id`)
VALUES
	('Bassnectar','Bassnectar is the stage name of Lorin Ashton, a freeform electronic music producer and DJ based in Santa Cruz, California. He is best known for his live performances, light shows, and community engagement.','bassnectar8.jpg','Dubstep',31),
	('Boogaloo Joe Jones','Ivan Joseph Jones (born November 1, 1940), known professionally as Joe Jones or Boogaloo Joe Jones, is a jazz guitarist','Boogaloo_Joe_Jones.jpg','Funk, Jazz',32),
	('Curtis Mayfield','Curtis Lee Mayfield, né le 3 juin 1942 à Chicago et mort le 26 décembre 1999, était un chanteur, auteur et compositeur de soul, de funk, de rhythm and blues, notamment connu pour la bande originale du film de blaxploitation Superfly.','Curtis_Mayfield.png','Soul, Chanson',33),
	('Cypress Hill','Cypress Hill est un groupe américain de rap, formé en 1988, originaire de Californie.','cypress_hill.jpg','Hip Hop',34),
	('Daft Punk','Daft Punk est un groupe français de musique électronique, originaire de Paris. Actifs depuis 1993, Thomas Bangalter et Guy-Manuel de Homem-Christo, les deux membres, ont allié à leurs sons electro, ...','Daft-Punk.jpg','Electro',35),
	('Django Reinhardt','Jean Reinhardt, plus connu sous le nom de Django Reinhardt, est un guitariste de jazz français, né le 23 janvier 1910 à Liberchies en Belgique et mort le 16 mai 1953 à Samois-sur-Seine.','Django_Reinhardt_by_toadboue.jpg','Jazz, Gypsy',36),
	('The Beatles','The Beatles est un groupe musical originaire de Liverpool, composé de John Lennon, Paul McCartney, George Harrison et Ringo Starr. Il demeure, en dépit de sa séparation en 1970, l\'un des groupes de rock les plus populaires au monde.','down-the-abbey-road-the-beatles.jpg','Pop, Rock',37),
	('Ennio Morricone','Ennio Morricone est un compositeur et chef d\'orchestre italien, réputé notamment pour ses musiques de films, en particulier celles réalisées pour son ami et camarade de classe Sergio Leone. Son fils Andrea Morricone est également compositeur.','ennio-morricone.jpg','Rock, Western',38),
	('Flux Pavilion','Joshua Steele, plus connu sous le nom de Flux Pavilion, est un producteur et DJ anglais, né en 1989 et actif depuis 2008. ','flux-pavilion.jpg','Electro',39),
	('Gentlemans Dub Club','Having built a reputation on consistently delivering one of the most energetic and exhilarating live shows to emerge from the UK bass music scene, the Gents’ antics have seen them astound crowds from Goa to Glastonbury, Bestival, V Festival, Secret Garden Party, France\'s Telerama Dub Festival and Poland’s Ostróda Reggae Festival, not to mention the biggest bass music festival in the world - Croatia’s Outlook Festival','Gentlemans-Dub-Club.jpg','Dub, Reggae, Pop',40),
	('Gramatik','Gramatik, de son vrai nom Denis Jasarevic, est un DJ, producteur américain, né le 19 octobre 1984 à Portorož, Slovénie.','Gramatik.jpeg','Dubstep',41),
	('James Brown','James Joseph Brown Jr. était un musicien, chanteur, auteur-compositeur, danseur et producteur américain. Un des initiateurs du funk, il est fréquemment surnommé \"The Godfather of Soul\".','james_brown.jpg','Soul, Funk',42),
	('Kavinsky','Kavinsky, de son vrai nom Vincent Belorgey, né le 31 juillet 1975, en Seine-Saint-Denis est un artiste de musique électronique et un acteur français','kavinsky.jpg','Electro',43),
	('Queen','Queen est un groupe de rock britannique, formé en 1970 à Londres par Freddie Mercury, Brian May et Roger Taylor, ces deux derniers étant issus du groupe Smile. L’année suivante, le bassiste John Deacon vient compléter la formation.','Logo_Queen.png','Rock',44),
	('Major Lazer','Major Lazer est un projet musical mené par le DJ/producteur Diplo. La musique de Major Lazer s\'inscrit dans le reggae avec en plus des sonorités électroniques. Le groupe collabore régulièrement avec des chanteurs pour ses chansons','Major-Lazer.png','Reggae, Hip Hop',45),
	('Mc solaar','MC Solaar, de son vrai nom Claude M\'Barali, est un rappeur français d\'origine sénégalo-tchadienne né le 5 mars 1969 à Dakar.','mc_solaar.jpg','Hip Hop, Chanson',46),
	('MGMT','MGMT, précédemment connu sous le nom de The Management, est un groupe américain de rock alternatif. Originaire de Brooklyn, le groupe est composé initialement de Ben Goldwasser et de Andrew VanWyngarden.','mgmt.jpeg','Rock',47),
	('Michael Jackson','Michael Joseph Jackson, né le 29 août 1958 à Gary et mort le 25 juin 2009 à Los Angeles, est un chanteur, danseur-chorégraphe, auteur-compositeur-interprète acteur et réalisateur américain.','Michael-Jackson.jpg','Pop, Funk',48),
	('Moby','Moby, de son vrai nom Richard Melville Hall, est un artiste de musique électronique américain et photographe, né le 11 septembre 1965 à New York dans le quartier de Harlem.','moby-smile.jpg','Electro, Pop',49),
	('Mr. Oizo','Mr. Oizo, de son vrai nom Quentin Dupieux est un artiste de musique électronique, réalisateur et scénariste français, né le 14 avril 1974 à Paris','mr-oizo-flat-eric.jpg','Electro',50),
	('Mungo\'s Hifi','Mungo\'s Hi Fi is a sound system based in Glasgow, Scotland which follows the original Jamaican sound system tradition. After working together as the Dub Dentists, Tom Tattersall and Doug Paine founded the group in 2000, writing, recording, producing and performing their own brand of reggae and dub music, working in collaboration with other artists and producers.','mungohifi.jpg','Dub, Reggae',51),
	('Nirvana','Nirvana est un groupe américain de rock alternatif, souvent associé au grunge, formé en 1987 à Aberdeen, dans l\'état de Washington, par le chanteur-guitariste Kurt Cobain et le bassiste Krist Novoselic.','nirvana.jpg','Rock',52),
	('Panda Dub','Le projet Panda Dub est né à Lyon en 2007. Dub maker influencé par les scènes dub françaises et Anglaises, Panda Dub a su se créer un style très personnel. Le reggae roots, le stepper anglais et l’électro dub à la française nourrissent ses compositions qui ont toutes les caractéristiques de celles dont les sound system à l’anglaise raffolent. Le son du Panda est issu d’un savant mélange de samples ethno, de mélodies electro fraîches et percutantes, de textures envoûtantes et de rythmiques lourdes.','panda_dub_m.jpg','Dub, Electro',53),
	('Puppetmastaz','The Puppetmastaz est un groupe de hip-hop allemand fondé dans les années 1990 dont les membres sont représentés par des marionnettes.','puppetmastaz.jpg','Hip Hop, Reggae',54),
	('Radiohead','Radiohead est un groupe de rock anglais originaire d\'Abingdon dans l\'Oxfordshire. Le groupe est composé de Thom Yorke au chant, à la guitare et au piano, de Jonny Greenwood à la guitare, piano et Ondes ...','radiohead.jpg','Rock, Electro',55),
	('Rusko','Rusko, de son vrai nom Christopher William Mercer, est né le 26 janvier 1985. Né a Leeds en Angleterre, il est producteur de dubstep et DJ.','rusko.jpeg','Dubstep',56),
	('Stand High Patrol','Pupajim est un chanteur et compositeur de reggae français né en 1983 et originaire de Brest, en Bretagne. Il fait partie du sound system Stand High Patrol, avec qui il se produit occasionnellement. Le sound system est composé de Rootystep (selecta), McGyver (operator) et Pupajim (chanteur, MC, dub builder)1, ou Marina P (chanteuse).','Stand-High-Patrol-midnightwalker.jpg','Dub, Reggae',57),
	('The xx','The xx est un groupe de rock aux sonorités épurées le rapprochant parfois de la musique minimaliste, formé à Londres en 2005.','the_xx_coexist.jpg','Rock',58),
	('Uppermost','Behdad Nejatbakhshe, better known by his stage name Uppermost, is a French electronic music producer based in Paris, France.','Uppermost2.jpg','Electro',59),
	('Paul Kalkbrenner','Paul Kalkbrenner, né à Leipzig en 1977, est un producteur et DJ allemand de musique électronique de style techno et electro, également connu sous les pseudonymes Paul dB+, Kalkito ou Grenade','Paul_Kalkbrenner_at_Alte_Diamantbrauerei.jpg','Electro',60);

/*!40000 ALTER TABLE `artistes` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table concerts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `concerts`;

CREATE TABLE `concerts` (
  `Artiste` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Lieu` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Adresse` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Ville` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Date` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Prix` double NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `concerts` WRITE;
/*!40000 ALTER TABLE `concerts` DISABLE KEYS */;

INSERT INTO `concerts` (`Artiste`, `Lieu`, `Adresse`, `Ville`, `Date`, `Prix`, `id`)
VALUES
	('Bassnectar','La Maroquinerie','23 Rue Boyer','Paris','10/01/2014 20:00:00',13,1),
	('Bassnectar','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','13/01/2014 19:00:00',39,2),
	('Bassnectar','','13 Rue Delandine','Lyon','20/01/2014 20:00:00',26,3),
	('Bassnectar','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','27/01/2014 19:30:00',43,4),
	('Boogaloo Joe Jones','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','09/02/2014 20:00:00',28,5),
	('Boogaloo Joe Jones','Rock School Barbey  ','18 Cours Barbey','Bordeaux','10/01/2014 20:00:00',15,6),
	('Boogaloo Joe Jones','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','18/02/2014 20:30:00',30,7),
	('Boogaloo Joe Jones','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','20/01/2014 20:00:00',48,8),
	('Curtis Mayfield','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','13/01/2014 19:00:00',37,9),
	('Curtis Mayfield','Le Moulin  ','47 Boulevard Perrin','Marseille','25/02/2014 20:30:00',23,10),
	('Curtis Mayfield','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','04/03/2014 20:00:00',36,11),
	('Curtis Mayfield','Le Dôme  ','48 Avenue de Saint-Just','Marseille','09/02/2014 20:00:00',42,12),
	('Cypress Hill','Cabaret Aléatoire  ','41 Rue Jobin','Marseille','10/01/2014 20:00:00',36,13),
	('Cypress Hill','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','27/01/2014 19:30:00',17,14),
	('Cypress Hill','Le Mandala  ','23 Rue des Amidonniers','Toulouse','11/04/2014 20:00:00',33,15),
	('Cypress Hill','La Plateforme','4 Quai Victor Augagneur','Lyon','15/04/2014 19:30:00',39,16),
	('Daft Punk','el Chicho  ','52 Place des Capucins','Bordeaux','18/02/2014 20:30:00',16,17),
	('Daft Punk','Le bijou  ','123 Avenue de Muret,','Toulouse','04/03/2014 20:00:00',25,18),
	('Daft Punk','La Maroquinerie','23 Rue Boyer','Paris','25/02/2014 20:30:00',46,19),
	('Daft Punk','Le Dôme  ','48 Avenue de Saint-Just','Marseille','13/01/2014 19:00:00',20,20),
	('Django Reinhardt','Café des Moines  ','12 Rue des Menuts','Bordeaux','15/04/2014 19:30:00',21,21),
	('Django Reinhardt','Espace Julien  ','39 Cours Julien','Marseille','09/02/2014 20:00:00',13,22),
	('Django Reinhardt','Le Périscope','13 Rue Delandine','Lyon','15/04/2014 19:30:00',12,23),
	('Django Reinhardt','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','20/01/2014 20:00:00',30,24),
	('The Beatles','La Maroquinerie','23 Rue Boyer','Paris','12/01/2014 20:00:00',40,25),
	('The Beatles','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','10/01/2014 20:00:00',45,26),
	('The Beatles','Le Moulin  ','47 Boulevard Perrin','Marseille','27/01/2014 19:30:00',47,27),
	('The Beatles','Le Moulin  ','47 Boulevard Perrin','Marseille','15/04/2014 19:30:00',16,28),
	('Ennio Morricone','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','27/01/2014 19:30:00',43,29),
	('Ennio Morricone','Le Dôme  ','48 Avenue de Saint-Just','Marseille','25/02/2014 20:30:00',10,30),
	('Ennio Morricone','Le Moulin  ','47 Boulevard Perrin','Marseille','13/01/2014 19:00:00',20,31),
	('Ennio Morricone','Le Dôme  ','48 Avenue de Saint-Just','Marseille','04/03/2014 20:00:00',27,32),
	('Flux Pavilion','La Maroquinerie','23 Rue Boyer','Paris','09/02/2014 20:00:00',14,33),
	('Flux Pavilion','Le Périscope','13 Rue Delandine','Lyon','18/02/2014 20:30:00',11,34),
	('Flux Pavilion','Le Moulin  ','47 Boulevard Perrin','Marseille','10/01/2014 20:00:00',13,35),
	('Flux Pavilion','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','20/01/2014 20:00:00',17,36),
	('Gentlemans Dub Club','Rock School Barbey  ','18 Cours Barbey','Bordeaux','13/01/2014 19:00:00',16,37),
	('Gentlemans Dub Club','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','25/02/2014 20:30:00',22,38),
	('Gentlemans Dub Club','Le Moulin  ','47 Boulevard Perrin','Marseille','27/01/2014 19:30:00',16,39),
	('Gentlemans Dub Club','Le Périscope','13 Rue Delandine','Lyon','11/04/2014 20:00:00',24,40),
	('Gramatik','La Maroquinerie','23 Rue Boyer','Paris','12/01/2014 20:00:00',38,41),
	('Gramatik','Le Dôme  ','48 Avenue de Saint-Just','Marseille','09/02/2014 20:00:00',20,42),
	('Gramatik','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','15/04/2014 19:30:00',30,43),
	('Gramatik','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','04/03/2014 20:00:00',39,44),
	('James Brown','Rock School Barbey  ','18 Cours Barbey','Bordeaux','20/01/2014 20:00:00',37,45),
	('James Brown','La Maroquinerie','23 Rue Boyer','Paris','12/01/2014 20:00:00',24,46),
	('James Brown','Le Périscope','13 Rue Delandine','Lyon','09/02/2014 20:00:00',22,47),
	('James Brown','Le Moulin  ','47 Boulevard Perrin','Marseille','11/04/2014 20:00:00',26,48),
	('James Brown','Le Dôme  ','48 Avenue de Saint-Just','Marseille','18/02/2014 20:30:00',46,49),
	('Kavinsky','La Maroquinerie','23 Rue Boyer','Paris','25/02/2014 20:30:00',11,50),
	('Kavinsky','La Maroquinerie','23 Rue Boyer','Paris','27/01/2014 19:30:00',32,51),
	('Kavinsky','Rock School Barbey  ','18 Cours Barbey','Bordeaux','04/03/2014 20:00:00',36,52),
	('Kavinsky','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','13/01/2014 19:00:00',28,53),
	('Queen','Cabaret Aléatoire  ','41 Rue Jobin','Marseille','09/02/2014 20:00:00',20,54),
	('Queen','La Maroquinerie','23 Rue Boyer','Paris','12/01/2014 20:00:00',38,55),
	('Queen','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','20/01/2014 20:00:00',34,56),
	('Queen','Cabaret Aléatoire  ','41 Rue Jobin','Marseille','16/01/2014 20:00:00',31,57),
	('Major Lazer','Le Périscope','13 Rue Delandine','Lyon','18/02/2014 20:30:00',35,58),
	('Major Lazer','Le Moulin  ','47 Boulevard Perrin','Marseille','15/04/2014 19:30:00',16,59),
	('Major Lazer','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','10/01/2014 20:00:00',49,60),
	('Major Lazer','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','11/04/2014 20:00:00',42,61),
	('Mc solaar','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','25/02/2014 20:30:00',29,62),
	('Mc solaar','Le Moulin  ','47 Boulevard Perrin','Marseille','27/01/2014 19:30:00',36,63),
	('Mc solaar','La Maroquinerie','23 Rue Boyer','Paris','18/02/2014 20:30:00',46,64),
	('Mc solaar','Cabaret Aléatoire  ','41 Rue Jobin','Marseille','16/01/2014 20:00:00',30,65),
	('MGMT','Le Périscope','13 Rue Delandine','Lyon','13/01/2014 19:00:00',38,66),
	('MGMT','Rock School Barbey  ','18 Cours Barbey','Bordeaux','12/01/2014 20:00:00',19,67),
	('MGMT','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','09/02/2014 20:00:00',40,68),
	('MGMT','La Maroquinerie','23 Rue Boyer','Paris','04/03/2014 20:00:00',10,69),
	('Michael Jackson','La Maroquinerie','23 Rue Boyer','Paris','16/01/2014 20:00:00',18,70),
	('Michael Jackson','Le Moulin  ','47 Boulevard Perrin','Marseille','25/02/2014 20:30:00',24,71),
	('Michael Jackson','Cabaret Aléatoire  ','41 Rue Jobin','Marseille','16/01/2014 20:00:00',13,72),
	('Michael Jackson','La Maroquinerie','23 Rue Boyer','Paris','15/04/2014 19:30:00',28,73),
	('Moby','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','09/02/2014 20:00:00',34,74),
	('Moby','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','11/04/2014 20:00:00',25,75),
	('Moby','La Maroquinerie','23 Rue Boyer','Paris','12/01/2014 20:00:00',16,76),
	('Moby','Rock School Barbey  ','18 Cours Barbey','Bordeaux','18/02/2014 20:30:00',33,77),
	('Mr. Oizo','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','04/03/2014 20:00:00',42,78),
	('Mr. Oizo','','','','27/01/2014 19:30:00',31,79),
	('Mr. Oizo','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','25/02/2014 20:30:00',22,80),
	('Mr. Oizo','','','','16/01/2014 20:00:00',37,81),
	('Mungo\'s Hifi','Le Périscope','13 Rue Delandine','Lyon','20/01/2014 20:00:00',19,82),
	('Mungo\'s Hifi','Le Moulin  ','47 Boulevard Perrin','Marseille','16/01/2014 20:00:00',30,83),
	('Mungo\'s Hifi','','','','15/04/2014 19:30:00',27,84),
	('Mungo\'s Hifi','La Maroquinerie','23 Rue Boyer','Paris','11/04/2014 20:00:00',15,85),
	('Nirvana','Le Moulin  ','47 Boulevard Perrin','Marseille','27/01/2014 19:30:00',40,86),
	('Nirvana','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','09/02/2014 20:00:00',16,87),
	('Nirvana','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','16/01/2014 20:00:00',28,88),
	('Nirvana','Le Moulin  ','47 Boulevard Perrin','Marseille','20/01/2014 20:00:00',43,89),
	('Panda Dub','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','18/02/2014 20:30:00',30,90),
	('Panda Dub','Cabaret Aléatoire  ','41 Rue Jobin','Marseille','11/04/2014 20:00:00',15,91),
	('Panda Dub','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','04/03/2014 20:00:00',50,92),
	('Panda Dub','La Maroquinerie','23 Rue Boyer','Paris','13/01/2014 19:00:00',36,93),
	('Puppetmastaz','Cabaret Aléatoire  ','41 Rue Jobin','Marseille','15/04/2014 19:30:00',49,94),
	('Puppetmastaz','Le Périscope','13 Rue Delandine','Lyon','12/01/2014 20:00:00',38,95),
	('Puppetmastaz','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','18/02/2014 20:30:00',40,96),
	('Puppetmastaz','Le Moulin  ','47 Boulevard Perrin','Marseille','25/02/2014 20:30:00',11,97),
	('Radiohead','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','09/02/2014 20:00:00',41,98),
	('Radiohead','Cabaret Aléatoire  ','41 Rue Jobin','Marseille','16/01/2014 20:00:00',17,99),
	('Radiohead','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','10/01/2014 20:00:00',13,100),
	('Radiohead','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','27/01/2014 19:30:00',47,101),
	('Rusko','Le Moulin  ','47 Boulevard Perrin','Marseille','12/01/2014 20:00:00',28,102),
	('Rusko','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','11/04/2014 20:00:00',33,103),
	('Rusko','La Maroquinerie','23 Rue Boyer','Paris','18/02/2014 20:30:00',40,104),
	('Rusko','Rock School Barbey  ','18 Cours Barbey','Bordeaux','25/02/2014 20:30:00',29,105),
	('Stand High Patrol','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','09/02/2014 20:00:00',12,106),
	('Stand High Patrol','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','15/04/2014 19:30:00',19,107),
	('Stand High Patrol','Rock School Barbey  ','18 Cours Barbey','Bordeaux','11/04/2014 20:00:00',48,108),
	('Stand High Patrol','Le Dôme  ','48 Avenue de Saint-Just','Marseille','20/01/2014 20:00:00',15,109),
	('The xx','La Flèche d\'Or','102 Bis Rue de Bagnolet','Paris','04/03/2014 20:00:00',25,110),
	('The xx','Le Moulin  ','47 Boulevard Perrin','Marseille','27/01/2014 19:30:00',27,111),
	('The xx','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','18/02/2014 20:30:00',11,112),
	('Uppermost','Le Bootleg  ','4-6 Rue Lacornée','Bordeaux','10/01/2014 20:00:00',38,113),
	('Uppermost','Le Moulin  ','47 Boulevard Perrin','Marseille','04/03/2014 20:00:00',39,114),
	('Uppermost','La Maroquinerie','23 Rue Boyer','Paris','25/02/2014 20:30:00',24,115),
	('Uppermost','Rock School Barbey  ','18 Cours Barbey','Bordeaux','09/02/2014 20:00:00',49,116),
	('Paul Kalkbrenner','Le Périscope','13 Rue Delandine','Lyon','18/02/2014 20:30:00',24,117),
	('Paul Kalkbrenner','Les Subsistances','8 bis Quai Saint-Vincent','Lyon','27/01/2014 19:30:00',25,118),
	('Paul Kalkbrenner','Rock School Barbey  ','18 Cours Barbey','Bordeaux','20/01/2014 20:00:00',22,119),
	('Paul Kalkbrenner','La Maroquinerie','23 Rue Boyer','Paris','13/01/2014 19:00:00',27,120),
	('Bassnectar','La Flèche d\'Or','','','25/11/2015 22:02:00',2,121);

/*!40000 ALTER TABLE `concerts` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
