CREATE TABLE Adherent(
    id_adhérent INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom VARCHAR(25) NOT NULL,
    prenom VARCHAR(25) NOT NULL,
    adresse VARCHAR(225) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telephone VARCHAR(10) NOT NULL,
    CIN VARCHAR(8) NOT NULL,
    date_de_naissance VARCHAR(12) NOT NULL,
    type VARCHAR(20) NOT NULL,
    user_name VARCHAR(30) NOT NULL,
    password VARCHAR(30) NOT NULL,
    date_inscription date NOT NULL,
    pinalité VARCHAR(1) NOT NULL
);


CREATE TABLE Ouvrage (
  id_ouvrage INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  Titre VARCHAR(30) NOT NULL,
  Nom_acteur VARCHAR(30) NOT NULL,
  image VARCHAR(225) NOT NULL,
  Etat VARCHAR(225) NOT NULL,
  type VARCHAR(20) NOT NULL,
  Date_edition date NOT NULL,
  Date_achat date NOT NULL,
  Nombre_pages VARCHAR(5) NOT NULL
);

CREATE TABLE Gerant(
  id_gerant INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  Nom VARCHAR(30) NOT NULL,
  Prenom VARCHAR(30) NOT NULL,
  password VARCHAR(30) NOT NULL 
);

CREATE TABLE Reservation (
  id_reservation INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  date_reservation date NOT NULL,
  id_adherent INT NOT NULL,
  id_ouvrage INT NOT NULL,  
  FOREIGN KEY (id_adherent) REFERENCES Adherent(id_adherent),
  FOREIGN KEY (id_ouvrage) REFERENCES Ouvrage(id_ouvrage)
);

CREATE TABLE Emprunt (
  id_emprunt INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  date_emprunt date NOT NULL,
  date_retour date NOT NULL,
  id_reservation INT NOT NULL,
  id_gerant INT NOT NULL,  
  FOREIGN KEY (id_reservation) REFERENCES Reservation(id_reservation),
  FOREIGN KEY (id_gerant) REFERENCES Gerant(id_gerant)
);