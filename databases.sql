-- Création de la base de données
CREATE DATABASE IF NOT EXISTS gestion_de_championn;
USE gestion_de_championn;

-- Création de la tables
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    username VARCHAR(50) NOT NULL
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL, 
    role ENUM('admin', 'user') NOT NULL DEFAULT 'user' 
);

CREATE TABLE Reservation (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    user_id INT NOT NULL, 
    match_id INT NOT NULL, 
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (match_id) REFERENCES Match(id) ON DELETE CASCADE
);

CREATE TABLE Stadium (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    nom VARCHAR(50) NOT NULL,
    adresse VARCHAR(100) NOT NULL, 
    ville VARCHAR(50) NOT NULL 
);

CREATE TABLE Team (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(50) NOT NULL 
);


CREATE TABLE Match (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    equipe1_id INT NOT NULL, 
    equipe2_id INT NOT NULL, 
    stade_id INT NOT NULL, 
    date_heure DATETIME NOT NULL, 
    FOREIGN KEY (equipe1_id) REFERENCES Team(id) ON DELETE CASCADE,
    FOREIGN KEY (equipe2_id) REFERENCES Team(id) ON DELETE CASCADE,
    FOREIGN KEY (stade_id) REFERENCES Stadium(id) ON DELETE CASCADE
);


fkorrrgitgit ??statffgit jfjjfgit