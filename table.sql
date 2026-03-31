CREATE DATABASE IF NOT EXISTS gestion_supermarche;
USE gestion_supermarche;

CREATE TABLE produits (
    id_produit INT AUTO_INCREMENT PRIMARY KEY,
    designation VARCHAR(100) NOT NULL,
    prix_unitaire INT NOT NULL,
    stock_actuel INT DEFAULT 0
);

CREATE TABLE caisses (
    id_caisse INT AUTO_INCREMENT PRIMARY KEY,
    nom_caisse VARCHAR(50) NOT NULL
);

CREATE TABLE achats (
    id_achat INT AUTO_INCREMENT PRIMARY KEY,
    id_produit INT,
    id_caisse INT,
    quantite INT NOT NULL,
    date_achat DATETIME DEFAULT CURRENT_TIMESTAMP
);