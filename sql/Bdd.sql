DROP DATABASE DeployDev;
Create DATABASE DeployDev;
use DeployDev;

CREATE TABLE UTILISATEURS
(user_id SMALLINT AUTO_INCREMENT PRIMARY KEY,
prenom VARCHAR(30),
login VARCHAR(30),
mail VARCHAR(30),
mdp VARCHAR(100));

CREATE TABLE PROJETS
(projet_id SMALLINT AUTO_INCREMENT PRIMARY KEY,
date_de_creation DATE,
nom_projet VARCHAR(30),
mdp VARCHAR(100),
langage VARCHAR(45),
description TEXT,
logo VARCHAR(100),
deploy BOOLEAN,
git_sftp BOOLEAN,
db_active BOOLEAN
);

CREATE TABLE STATUT
(
user_id SMALLINT,
FOREIGN KEY (user_id) REFERENCES UTILISATEURS (user_id),
projet_id SMALLINT,
FOREIGN KEY (projet_id) REFERENCES PROJETS (projet_id),
statut BOOLEAN
);

INSERT INTO `UTILISATEURS` (`user_id`, `Prenom`, `Login`, `Mail`, `Mdp`) VALUES
(1, 'bot', 'bot', 'bot@bot', 'aqw'),
(2, 'azertyuiop', 'azertyuiop', 'aze@poiu', 'azertyuiop'),
(3, 'qsdfghjklvbn', 'wxcvbn', 'aze@poiu', 'wxcvbn'),
(5, 'aqw', 'aqw', 'aqw@wqa', 'aqw'),
(6, 'efcxse', 'Admin', 'vprigaud@laposte.net', 'aze'),
(7, 'pmlo', 'AdminAdmin', 'vprigaud@laposte.net', 'aze'),
(8, 'fevz', 'Adam', 'vprigaud@laposte.net', 'aze'),
(9, 'zze', 'dmominique', 'vprigaud@laposte.net', 'aze'),
(10, 'plpzcd', 'Alice', 'vprigaud@laposte.net', 'aze'),
(11, 'zdc', 'noémi', 'vprigaud@laposte.net', 'aze'),
(12, 'dcz', 'iris', 'vprigaud@laposte.net', 'aze'),
(13, 'aezr', 'dimitri', 'vprigaud@laposte.net', 'aze'),
(14, 'ezqcd', 'nimad', 'vprigaud@laposte.net', 'aze');

INSERT INTO PROJETS(projet_id,date_de_creation,nom_projet,mdp,langage,description,logo,git_sftp,db_active)
VALUES ('1','2016-12-12','deploy',1,'PHP&MYSQL','Cest nous','test.jpg',1,0);
INSERT INTO PROJETS(projet_id,date_de_creation,nom_projet,mdp,langage,description,logo,git_sftp,db_active)
VALUES ('2','2016-12-12','nom_p2',2,'langage','description','F-D.jpg',0,1);
INSERT INTO PROJETS(projet_id,date_de_creation,nom_projet,mdp,langage,description,logo,git_sftp,db_active)
VALUES ('3','2016-12-12','nom_p3',3,'langage','description','F-D.jpg',1,1);
INSERT INTO PROJETS(projet_id,date_de_creation,nom_projet,mdp,langage,description,logo,git_sftp,db_active)
VALUES ('4','2016-12-12','nom_p4',4,'langage','description','F-D.jpg',0,0);

INSERT INTO `STATUT` (`user_id`, `projet_id`, `statut`) VALUES
(3, 3, 1),
(2, 1, 0),
(2, 4, 0);


-- INSERT INTO MESSAGES(id_destinataire, user_id, titre, message) VALUES( 0, '1', '', 'Bienvenue');

-- CREATE TABLE MESSAGE 
-- (ID_messages SMALLINT auto_increment PRIMARY KEY,
-- Heure DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
-- id_destinataire SMALLINT,
-- id_projet SMALLINT,
-- FOREIGN KEY (ID_destinataire) REFERENCES UTILISATEURS (user_id),
-- FOREIGN KEY (id_projet) REFERENCES PROJETS (ID_projet),
-- user_id int,
-- FOREIGN KEY (user_id) REFERENCES UTILISATEURS (user_id),
-- statut SMALLINT,
-- titre text NOT NULL,
-- message text NOT NULL)); 
