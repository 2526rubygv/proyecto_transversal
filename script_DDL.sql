CREATE TABLE empresa (
id_empresa INT PRIMARY KEY ,
nom VARCHAR (50) NOT NULL,
sector VARCHAR (50),
contacte VARCHAR (50)
ubicació VARCHAR (80) 
modalitat_practica VARCHAR (50)
);

CREATE TABLE CV (
id_cv INT PRIMARY KEY ,
data_creacio DATE ,
actualitzacio DATE ,
enllac VARCHAR (200) ,
estat_cv VARCHAR (30) ,
id_alumne INT ,
FOREIGN KEY (id_alumne) REFERENCES alumne (id_alumne)    
);

CREATE TABLE enviament (
id_enviament INT PRIMARY KEY ,
data_enviament DATE ,
estat VARCHAR (30) ,
notes TEXT ,
id_cv INT ,
id_empresa INT ,
FOREIGN KEY (id_cv) REFERENCES cv (id_cv) ,
FOREIGN KEY (id_empresa) REFERENCES empresa (id_empresa) 
);
