CREATE DATABASE IF NOT EXISTS gestion_supermarche;
USE gestion_supermarche;


CREATE TABLE produit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    designation VARCHAR(100),
    prix INT,
    quantite_en_stock INT
);

CREATE TABLE caisse (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_caisse VARCHAR(50)
);

CREATE TABLE achat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_produit INT,
    id_caisse INT,
    quantite INT
);