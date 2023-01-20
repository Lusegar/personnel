CREATE DATABASE IF NOT EXISTS `LIGUES` DEFAULT CHARACTER SET UTF8MB4 COLLATE utf8_general_ci;
USE `LIGUES`;

CREATE TABLE `EMPLOYE` (
  `id_employé` VARCHAR(42),
  `nom_employé` VARCHAR(42),
  `prénom_employé` VARCHAR(42),
  `mail_employé` VARCHAR(42),
  `mdp_employé` VARCHAR(42),
  `date_arrivée` VARCHAR(42),
  `date_départ` VARCHAR(42),
  `habitation` VARCHAR(42),
  `id_ligue` VARCHAR(42),
  PRIMARY KEY (`id_employé`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `LIGUE` (
  `id_ligue` VARCHAR(42),
  `nom_ligue` VARCHAR(42),
  PRIMARY KEY (`id_ligue`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

ALTER TABLE `EMPLOYE` ADD FOREIGN KEY (`id_ligue`) REFERENCES `LIGUE` (`id_ligue`);