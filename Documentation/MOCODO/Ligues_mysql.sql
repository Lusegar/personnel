
CREATE TABLE `EMPLOYE` (
  `id_employé` INT(255)  AUTO_INCREMENT,
  `nom_employé` VARCHAR(42) DEFAULT NULL,
  `prénom_employé` VARCHAR(42) DEFAULT NULL,
  `mail_employé` VARCHAR(42) DEFAULT NULL,
  `mdp_employé` VARCHAR(42) DEFAULT NULL,
  `date_arrivée` DATE,
  `date_départ` DATE,
  `habilitation` INT(2),
  `id_ligue` INT(255) DEFAULT NULL,
  PRIMARY KEY (`id_employé`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

CREATE TABLE `LIGUE` (
  `id_ligue` int(255) AUTO_INCREMENT,
  `nom_ligue` varchar(42) DEFAULT NULL,
  PRIMARY KEY (`id_ligue`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

ALTER TABLE `EMPLOYE` ADD FOREIGN KEY (`id_ligue`) REFERENCES `LIGUE` (`id_ligue`);