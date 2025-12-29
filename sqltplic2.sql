--creation de la base de donnees, attention nous devons etre a la base de donnees master pour la creation de la BD
create database dbhotel

--apres la cretion de la base de donnees on va se posttionnner sur notre base deja creee en ceci
use dbhotel
--CREATIONS DES TABLES

--creation de la ttable client
create table tbclient(
id int primary key identity(1,1),
nom nvarchar(500),
adresse nvarchar(500),
telephone nvarchar(13),
mail nvarchar(100)
)

--creation de la table type
create table tbtype(
id int primary key identity(1,1),
descr nvarchar(200)
)
--creation de la table chambre
create table tbchambre(
id int primary key identity(1,1),
denomination nvarchar(200),
codetype int foreign key references tbltype(id),
)
--creation de la table reservation
create table tblreservation(
id int primary key identity (1,1),
codeclient int foreign key references tblclient(id),
codechambre int foreign key references tblchambre(id),
dateteentre datetime,
datesortie datetime
)
--creation de la table paiement
create table tblpaiement(
id int primary key identity(1,1),
codereservation int foreign key references tblreservation(id),
montant decimal(18,2),
datepayement datetime,
modepayement nvarchar(100)
)

--SIMULATION DES DONNEES
--donnees pour 10 clients
insert into tblclient (nom,adresse,telephone,mail) values('BWENGE BAHEMBA KAFULI','GOMA','1111111111','b@.f.fr')
insert into tblclient (nom,adresse,telephone,mail) values('1BWENGE BAHEMBA KAFULI','GOMA','1111111111','b@.f.fr')
insert into tblclient (nom,adresse,telephone,mail) values('2BWENGE BAHEMBA KAFULI','GOMA','1111111111','b@.f.fr')
insert into tblclient (nom,adresse,telephone,mail) values('3BWENGE BAHEMBA KAFULI','GOMA','1111111111','b@.f.fr')
insert into tblclient (nom,adresse,telephone,mail) values('4BWENGE BAHEMBA KAFULI','GOMA','1111111111','b@.f.fr')
insert into tblclient (nom,adresse,telephone,mail) values('5BWENGE BAHEMBA KAFULI','GOMA','1111111111','b@.f.fr')
insert into tblclient (nom,adresse,telephone,mail) values('6BWENGE BAHEMBA KAFULI','GOMA','1111111111','b@.f.fr')
insert into tblclient (nom,adresse,telephone,mail) values('7BWENGE BAHEMBA KAFULI','GOMA','1111111111','b@.f.fr')
insert into tblclient (nom,adresse,telephone,mail) values('8BWENGE BAHEMBA KAFULI','GOMA','1111111111','b@.f.fr')
insert into tblclient (nom,adresse,telephone,mail) values('9BWENGE BAHEMBA KAFULI','GOMA','1111111111','b@.f.fr')
insert into tblclient (nom,adresse,telephone,mail) values('10BWENGE BAHEMBA KAFULI','GOMA','1111111111','b@.f.fr')
--donnees pour les types de chambres
insert into tbltype (descr) values ('PAUVRE')
insert into tbltype (descr) values ('RICHE')
insert into tbltype (descr) values ('PRESIDENTIEL')
--donnees pour les chambres
insert into tblchambre (denomination,codetype) values('CHAMBRE 1', 1)
insert into tblchambre (denomination,codetype) values('CHAMBRE 2', 1)
insert into tblchambre (denomination,codetype) values('CHAMBRE 3', 1)
insert into tblchambre (denomination,codetype) values('CHAMBRE 4', 2)
insert into tblchambre (denomination,codetype) values('CHAMBRE 5', 2)
insert into tblchambre (denomination,codetype) values('CHAMBRE 6', 2)
insert into tblchambre (denomination,codetype) values('CHAMBRE 7', 3)
--donnees pour les reservations
insert into tblreservation (codeclient,codechambre,dateteentre,datesortie) values (1,3,12-10-2025,12-15-2025)
insert into tblreservation (codeclient,codechambre,dateteentre,datesortie) values (4,1,12-10-2025,12-15-2025)
insert into tblreservation (codeclient,codechambre,dateteentre,datesortie) values (5,3,12-10-2025,12-15-2025)
insert into tblreservation (codeclient,codechambre,dateteentre,datesortie) values (8,2,12-20-2025,null)
insert into tblreservation (codeclient,codechambre,dateteentre,datesortie) values (7,2,12-01-2025,12-30-2025)
insert into tblreservation (codeclient,codechambre,dateteentre,datesortie) values (2,7,12-31-2025,null)
--donnees pour les paiements
insert into tblpaiement (codereservation,montant,datepayement) values (1,25,12-10-2025)
insert into tblpaiement (codereservation,montant,datepayement) values (2,50,12-10-2025)
insert into tblpaiement (codereservation,montant,datepayement) values (3,25,12-10-2025)
insert into tblpaiement (codereservation,montant,datepayement) values (4,100,12-10-2025)
insert into tblpaiement (codereservation,montant,datepayement) values (5,20,12-01-2025)
insert into tblpaiement (codereservation,montant,datepayement) values (1,10000,12-31-2025)

