-- BBDD training que es troba dins del containidor Docker, crear nomes les taules

-- Creació de la base de datos , CREATE DATABASE gestio_fct;

--Creació de la Taula
CREATE TABLE cicle ( 
id_cicle SMALLINT PRIMARY KEY,
nom_cicle VARCHAR (50) NOT NULL ,
promocio VARCHAR(50) NOT NULL
);

CREATE TABLE empresa (
id_empresa SMALLINT PRIMARY KEY ,
nom VARCHAR (50) NOT NULL,
sector VARCHAR (50),
contacte VARCHAR (50) ,
ubicacio VARCHAR (80) ,
modalitat_practica VARCHAR (50) CHECK (modalitat_practica IN ('intensiva','general','ambdues'))
);
--Informació sobre cada empresa i la seva modalitat.

CREATE TABLE avaluacio ( 
id_avaluacio SMALLINT PRIMARY KEY,
observacio TEXT,
treball_equip INT CHECK (treball_equip BETWEEN 0 AND 10),
autonomia INT CHECK (autonomia BETWEEN 0 AND 10),
comunicacio INT CHECK (comunicacio BETWEEN 0 AND 10),
puntualitat INT CHECK (puntualitat BETWEEN 0 AND 10),
nivell_tecnic INT CHECK (nivell_tecnic BETWEEN 0 AND 10),
puntuacio INT CHECK (puntuacio BETWEEN 0 AND 10),
actitud INT CHECK (actitud BETWEEN 0 AND 10)
);
--Registre detallat de las competències que ha de complir per a les practiques.
-- Sistema de rúbrica (0-10) per a l'avaluació de competències tècniques.

CREATE TABLE alumne ( 
id_alumne SMALLINT PRIMARY KEY,
nom VARCHAR(100) NOT NULL,
cognom VARCHAR(100) NOT NULL,
dni VARCHAR(20) NOT NULL UNIQUE CHECK (dni ~ '^([0-9]{8}[A-Z])$'),
nass VARCHAR (12) NOT NULL UNIQUE CHECK (nass ~ '^([0-9]{12})$'), 
telefono VARCHAR(50),
estat_alumne VARCHAR(50) CHECK (estat_alumne IN ('actiu','inactiu')),
ra2_ipo VARCHAR (30) CHECK (ra2_ipo IN ('aprovat', 'no aprovat')),
data_inici DATE ,
data_fi DATE ,
tutor_empresa VARCHAR (100) ,
estat_assignada VARCHAR (40) CHECK (estat_assignada IN ('assignada','no assignada')),
id_empresa SMALLINT ,
CONSTRAINT empresa_id_empresa_fk FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa)
);
--Taula d'informació de l'alumne.

CREATE TABLE matriculat (
id_avaluacio SMALLINT ,
id_alumne SMALLINT ,
id_cicle SMALLINT ,
PRIMARY KEY (id_alumne, id_cicle, id_avaluacio),
CONSTRAINT id_avaluacio_fk FOREIGN KEY (id_avaluacio) REFERENCES avaluacio(id_avaluacio),
CONSTRAINT id_alumne_fk FOREIGN KEY (id_alumne) REFERENCES alumne(id_alumne) ON DELETE CASCADE,
CONSTRAINT id_cicle_fk FOREIGN KEY (id_cicle) REFERENCES cicle(id_cicle)
);
-- Taula de relació per manejar les diferents inscripcions d'un estudiant a diversos cicles i les seves qualificacions.

CREATE TABLE CV (
id_cv SMALLINT PRIMARY KEY ,
data_creacio DATE NOT NULL ,
actualitzacio DATE ,
enllac VARCHAR (200) ,
estat_cv VARCHAR (30) CHECK (estat_cv IN ('completat','pendent','revisio')),
id_alumne SMALLINT NOT NULL ,
CONSTRAINT alumne_id_alumne_fk FOREIGN KEY (id_alumne) REFERENCES alumne(id_alumne) ON DELETE CASCADE 
);

CREATE TABLE enviament (
id_enviament SMALLINT PRIMARY KEY ,
data_enviament DATE NOT NULL,
estat VARCHAR (30)CHECK (estat IN ('enviat','vist','entrevista','rebutjat','acceptat')),
notes TEXT ,
id_cv SMALLINT NOT NULL ,
id_empresa SMALLINT NOT NULL ,
CONSTRAINT cv_env_fk FOREIGN KEY (id_cv) REFERENCES cv(id_cv)ON DELETE CASCADE,
CONSTRAINT empresa_env_fk FOREIGN KEY (id_empresa) REFERENCES empresa(id_empresa) ON DELETE CASCADE 
);
-- Historial d'enviaments de CV a empreses per controlar el procés de selecció.