SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `auteurs` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(50) NOT NULL,
    `prenom` VARCHAR(50) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `informations` TEXT(500) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE `posts` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `titre` VARCHAR(50) NOT NULL,
    `sujet` VARCHAR(50) NOT NULL,
    `reg_date` datetime NOT NULL DEFAULT current_timestamp(),
    `auteur` int(255) NOT NULL,
    `contenu` TEXT(500) NOT NULL,
    `url_page` VARCHAR(200),
    PRIMARY KEY (`id`),
    FOREIGN KEY (`auteur`)
        REFERENCES auteurs(`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE posts AUTO_INCREMENT = 100;

INSERT INTO auteurs (nom, prenom, email, informations) VALUES
    ('Doe', 'John', 'john.doe@example.com', 'Informations sur John Doe'),
    ('Smith', 'Alice', 'alice.smith@example.com', 'Informations sur Alice Smith'),
    ('Brown', 'Robert', 'robert.brown@example.com', 'Informations sur Robert Brown'),
    ('Johnson', 'Emily', 'emily.johnson@example.com', 'Informations sur Emily Johnson');

