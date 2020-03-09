CREATE DATABASE sterrenstelsel;

USE sterrenstelsel;

CREATE TABLE planeten (
naam VARCHAR(20) NOT NULL,
 diameter BIGINT NOT NULL,
 afstand_tot_de_zon BIGINT NOT NULL,
 massa BIGINT NOT NULL,
 bezoek_datum DATE,
 id MEDIUMINT NOT NULL AUTO_INCREMENT,
 PRIMARY KEY (id)
 );
 
 INSERT INTO planeten 
 (naam, diameter, afstand_tot_de_zon, massa, bezoek_datum) 
 VALUES
 ("Zon", "1392000", "0", 332946, NULL),
 ("Mercurius", "4880", "57910000", 0.1, NULL),
 ("Venus", "12104", "108208930", 0.9, NULL),
 ("Aarde", "12756", "149597870", 1, NULL),
 ("Mars", "6794", "227936640", 0.1, '1976-07-20'),
 ("Mars", "6794", "227936640", 0.1, '1976-07-20'),
 ("Maan", "1737", "384400", 1.2, '1969-07-20') 
 ;
 
SELECT 
    naam
FROM
    planeten
WHERE
    id = 6;
    
UPDATE planeten 
SET 
    naam = "teenalp"
WHERE
    id = 6;

DELETE FROM planeten
WHERE id = 6