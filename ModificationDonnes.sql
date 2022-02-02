/*Le numéro de téléphone principal d’un étudiant */
UPDATE telephone
SET Principal = 'non'
WHERE Id =  1 AND IdEtudiant = 1;
/*Changer le statut d’un étudiant(4) */
UPDATE etudiant
set Status = 'Partiel'
WHERE Id =  4 ;

/* Changer l’adresse principale d’un Étudiant*/
UPDATE adresse
SET Numero = 4578,
Rue = 'Rue Medecine',
Ville = 'Toronto',
CodePostal = 'T1N1G7',
Province = 'Ontario',
Pays = 'Canada'
WHERE Id = 1 AND IdEtudiant = 1 ;


/*Changer le numéro de téléphone principal dans la table
Téléphone */
UPDATE telephone
SET Numero = '456-8907'
WHERE Id = 1 AND IdEtudiant = 1 ; 

/* Désigner un nouveau numéro comme étant le numéro
principal*/
UPDATE telephone
SET Principal = 'oui'
WHERE Id = 3 AND IdEtudiant = 1;

/*Changer la ville , le code postal et le numéro dans la même
requête */
UPDATE adresse
SET Ville = 'Ottawa',CodePostal= 'G6M 6TY',Numero = 6550
WHERE Id = 2 AND IdEtudiant = 1;

/* Affecter une adresse à un autre étudiant*/
INSERT INTO adresse
VALUES(NULL,6780,'Rue Vallon','Beauport','G1T 2M7','Quebec','Canada','non',2,'Capitale-Nationale');




