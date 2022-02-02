/* creation de la table Etudiant */
CREATE TABLE Etudiant (
    Id INT NOT NULL AUTO_INCREMENT,
    Nom VARCHAR(40) NOT NULL,
    Prenom VARCHAR(60) NOT NULL,
    Age INT NOT NULL,
    Status ENUM('Partiel','Plein') NOT NULL,
    NombreCreditReussis INT,
    CodePermanent VARCHAR(40) NOT NULL,
    DateDeNaissance DATE NOT NULL,
    PRIMARY KEY (Id)
);
/* creation de la table Telephonne */
CREATE TABLE Telephone (
    Id INT NOT NULL AUTO_INCREMENT,
    Indicatif VARCHAR(10) NOT NULL,
    Numero VARCHAR(12) NOT NULL,
    /*le champ Principal de type enum oui ou non*/
    Principal ENUM('oui','non') NOT NULL,
    /* le champ cellulaire de type enum oui ou non*/
    Cellulaire ENUM('oui','non') NOT NULL,
    IdEtudiant INT NOT NULL,
    PRIMARY KEY (Id), 
    FOREIGN KEY (IdEtudiant)
        REFERENCES Etudiant (Id)
);
/* creation de la table Adresse */
CREATE TABLE Adresse (
    Id INT NOT NULL AUTO_INCREMENT,
    Numero INT NOT NULL,
    Rue VARCHAR(40) NOT NULL,
    Ville VARCHAR(40) NOT NULL,
    CodePostal VARCHAR(8) NOT NULL,
    Province VARCHAR(20) NOT NULL,
    Pays VARCHAR(20) NOT NULL,
    /*Le champ de type enum adresse principale */
    Principale ENUM('oui','non') NOT NULL,
    IdEtudiant INT NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (IdEtudiant)
        REFERENCES Etudiant (Id)
);