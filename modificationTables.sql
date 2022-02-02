/* ajouter le champ DiplomeObtenu dans la table Etudiant */
ALTER TABLE etudiant
ADD DiplomeObtenu VARCHAR(30) ;
/* ajouter le champ AnneeDiplomation dans la table Etudiant */
ALTER TABLE etudiant
ADD AnneeDiplomation DATE ;
/* ajouter le champ Compté dans la table Adresse */
ALTER TABLE adresse
ADD Compte VARCHAR(40) NOT NULL ;
/* ajout du champ Maison dans la table Telephone */
ALTER TABLE telephone
ADD Maison VARCHAR(50) ;
