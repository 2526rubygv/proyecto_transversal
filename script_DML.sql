-- creacio de empreses per la BBDD
INSERT INTO empresa (id_empresa, nom, sector, contacte, ubicacio, modalitat_practica) VALUES 
(27345,'Capgemini', 'Consultoria tecnologica y servicios IT', 'Maria Lopez', 'Barcelona', 'ambdues'),
(34578,'Apple', 'Tecnologia de consumo y hardware/software', 'Carlos Garcia', 'Barcelona', 'intensiva'),
(59871,'SAP', 'Software empresarial', 'Ana Martinez', 'Barcelona', 'general'),
(79436,'BCN22', 'Desarrollo de software, IA y servicios en la nube', 'Jose Fernandez', 'Barcelona', 'ambdues'),
(10294,'HP', 'Cloud', 'Laura Sanchez', 'Barcelona', 'general'),
(62458,'Q2BSTUDIO', 'I+D', 'David Rodriguez', 'Barcelona', 'intensiva'),
(97287,'Accenture', 'Outsourcing', 'Marta Perez', 'Barcelona', 'ambdues'),
(92603,'AWS', 'Cloud', 'Juan Gomez', 'Barcelona', 'general'),
(42189,'Oracle', 'Cloud i BBDD ', 'Isabel Torres', 'Barcelona', 'intensiva'),
(87213,'Terracom', 'Software', 'Luis Hernandez', 'Barcelona', 'ambdues');

--creacio de cicles
INSERT INTO cicle (id_cicle, nom_cicle, promocio) VALUES
(1023,'DAM', '2023'),
(2154,'DAW', '2021'),
(4301,'ASIX', '2020');

--creacio exemples d'avaluacio
INSERT INTO avaluacio (id_avaluacio, observacio, treball_equip, autonomia, comunicacio, puntualitat, nivell_tecnic, puntuacio, actitud) VALUES
(1,'Bona participacio en equip', 8, 7, 9, 10, 8, 8, 9),
(2,'Millorable en autonomia', 6, 5, 7, 8, 6, 7, 7),
(3,'Excellent comunicacio', 9, 8, 10, 9, 9, 9, 10),
(4,'Puntualitat destacada', 7, 6, 8, 10, 7, 8, 8),
(5,'Nivell tecnic alt', 8, 7, 9, 9, 10, 9, 9),
(6,'Actitud positiva i proactiva', 9, 9, 9, 8, 8, 9, 10),
(7,'Treball en equip correcte', 7, 6, 7, 7, 7, 7, 8),
(8,'Pot millorar en puntualitat', 6, 7, 6, 6, 6, 6, 7);

--creacio d'alumnes per la BBDD
INSERT INTO alumne (id_alumne, nom, cognom, dni, nass, telefono, estat_alumne, ra2_ipo, data_inici, data_fi, tutor_empresa, estat_assignada, id_empresa) VALUES
(101,'Raul', 'Garcia', '12345678A', '612345678901', '612 345 678', 'actiu', 'aprovat', '2023-01-15', '2023-06-15', 'Maria Lopez', 'assignada', 27345),
(102,'Nicolas', 'Gonzalez', '23456789B', '613456789012', '613 456 789', 'inactiu', 'no aprovat', '2021-02-01', '2021-07-01', 'Carlos Garcia', 'no assignada', 34578),
(103,'Javi', 'Rodriguez', '34567890C', '614567890123', '614 567 890', 'actiu', 'aprovat', '2020-03-10', '2020-08-10', 'Ana Martinez', 'assignada', 59871),
(104,'Dmitry', 'Vladmodich', '45678901D', '615678901234', '615 678 901', 'actiu', 'aprovat', '2025-04-20', '2025-09-20', 'Jose Fernandez', 'assignada', 79436),
(105,'Mathieu', 'Montpeilleur', '56789012E', '616789012345', '616 789 012', 'inactiu', 'no aprovat', '2022-05-05', '2022-10-05', 'Laura Sanchez', 'no assignada', 10294),
(106,'Tom', 'Johnson', '67890123F', '617890123456', '617 890 123', 'inactiu', 'no aprovat', '2024-06-15', '2024-11-15', 'David Rodriguez', 'no assignada', 62458),
(107,'Pietra', 'Milano', '78901234G', '618901234567', '618 901 234', 'actiu', 'aprovat', '2019-07-01', '2019-12-01', 'Marta Perez', 'assignada', 97287),
(108,'Lorena', 'del Mar', '89012345H', '619012345678', '619 012 345', 'inactiu', 'no aprovat', '2020-08-10', '2021-01-10', 'Juan Gomez', 'no assignada', 92603),
(109,'Lucia', 'Martinez', '90123456J', '620123456789', '620 123 456', 'actiu', 'aprovat', '2023-09-20', '2024-02-20', 'Isabel Torres', 'assignada', 42189),
(110,'Araceli', 'Novo', '01234567K', '621234567890', '621 234 567', 'inactiu', 'no aprovat', '2025-10-01', '2026-03-01', 'Luis Hernandez', 'no assignada', 87213),
(111,'Pietro', 'Di Marco', '11223344L', '622345678901', '622 345 678', 'actiu', 'aprovat', '2024-11-15', '2025-04-15', 'Maria Lopez', 'assignada', 27345),
(112,'Dorian', 'Marseille', '22334455M', '623456789012', '623 456 789', 'actiu', 'aprovat', '2021-12-01', '2022-05-01', 'Carlos Garcia', 'assignada', 34578),
(113,'Mikaela', 'dePrince', '33445566N', '624567890123', '624 567 890', 'inactiu', 'no aprovat', '2022-01-20', '2022-06-20', 'Ana Martinez', 'no assignada', 59871),
(114,'Beatriz', 'Ortiz', '44556677P', '625678901234', '625 678 901', 'inactiu', 'no aprovat', '2019-02-10', '2019-07-10', 'Jose Fernandez', 'no assignada', 79436),
(115,'Lua', 'Papasseit', '55667788Q', '626789012345', '626 789 012', 'actiu', 'aprovat', '2023-03-15', '2023-08-15', 'Laura Sanchez', 'assignada', 10294),
(116,'Marc', 'Canigo', '66778899R', '627890123456', '627 890 123', 'inactiu', 'no aprovat', '2025-04-25', '2025-09-25', 'David Rodriguez', 'no assignada', 62458),
(117,'Carles', 'Soler', '77889900S', '628901234567', '628 901 234', 'actiu', 'aprovat', '2020-05-30', '2020-10-30', 'Marta Perez', 'assignada', 97287),
(118,'Genis', 'Pujol', '88990011T', '629012345678', '629 012 345', 'inactiu', 'no aprovat', '2024-06-10', '2024-11-10', 'Juan Gomez', 'no assignada', 92603),
(119,'Xenia', 'Capdevila', '99001122U', '630123456789', '630 123 456', 'actiu', 'aprovat', '2022-07-20', '2022-12-20', 'Isabel Torres', 'assignada', 42189),
(120,'Estel', 'Valls', '10101010V', '631234567890', '631 234 567', 'inactiu', 'no aprovat', '2021-08-15', '2022-01-15', 'Luis Hernandez', 'no assignada', 87213);

--creacio exemples d'cv
INSERT INTO CV (id_cv, data_creacio, actualitzacio, enllac, estat_cv, id_alumne) VALUES
(142,'2023-01-10', '2023-02-15', 'https://drive.google.com/drive/cv/raul_garcia.pdf', 'completat', 101),
(387,'2023-03-22', '2023-03-25', 'https://drive.google.com/drive/cv/nicolas_gonzalez.pdf', 'pendent', 102),
(254,'2023-05-05', '2023-06-10', 'https://drive.google.com/drive/cv/javi_rodriguez.pdf', 'completat', 103),
(611,'2023-08-14', '2023-09-01', 'https://drive.google.com/drive/cv/dmitry_vlad.pdf', 'completat', 104),
(478,'2023-11-30', '2023-12-05', 'https://drive.google.com/drive/cv/mathieu_mont.pdf', 'revisio', 105),
(305,'2024-01-15', '2024-01-20', 'https://drive.google.com/drive/cv/tom_johnson.pdf', 'pendent', 106),
(736,'2024-02-10', '2024-03-12', 'https://drive.google.com/drive/cv/pietra_milano.pdf', 'completat', 107),
(819,'2024-04-01', '2024-04-05', 'https://drive.google.com/drive/cv/lorena_mar.pdf', 'revisio', 108),
(563,'2024-05-20', '2024-06-15', 'https://drive.google.com/drive/cv/lucia_martinez.pdf', 'completat', 109),
(290,'2024-07-08', '2024-07-10', 'https://drive.google.com/drive/cv/araceli_novo.pdf', 'pendent', 110),
(671,'2024-09-12', '2024-10-01', 'https://drive.google.com/drive/cv/pietro_marco.pdf', 'completat', 111),
(432,'2024-10-25', '2024-11-05', 'https://drive.google.com/drive/cv/dorian_mars.pdf', 'completat', 112),
(198,'2024-12-01', '2024-12-10', 'https://drive.google.com/drive/cv/mikaela_prince.pdf', 'revisio', 113),
(524,'2025-01-05', '2025-01-07', 'https://drive.google.com/drive/cv/beatriz_ortiz.pdf', 'pendent', 114),
(857,'2023-04-18', '2023-05-20', 'https://drive.google.com/drive/cv/lua_papas.pdf', 'completat', 115),
(309,'2023-09-29', '2023-10-15', 'https://drive.google.com/drive/cv/marc_canigo.pdf', 'completat', 116),
(476,'2024-03-14', '2024-03-20', 'https://drive.google.com/drive/cv/carles_soler.pdf', 'revisio', 117),
(693,'2024-06-22', '2024-07-01', 'https://drive.google.com/drive/cv/genis_pujol.pdf', 'pendent', 118),
(381,'2024-08-19', '2024-09-05', 'https://drive.google.com/drive/cv/xenia_cap.pdf', 'completat', 119),
(245,'2025-01-20', '2025-02-01', 'https://drive.google.com/drive/cv/estel_valls.pdf', 'completat', 120);

--creacio exemples d'enviament
INSERT INTO enviament (id_enviament, data_enviament, estat, notes, id_cv, id_empresa) VALUES
(10234,'2023-01-15', 'vist', 'El CV ha estat vist', 142, 27345),
(23567,'2023-02-01', 'entrevista', 'Convocat a entrevista', 387, 34578),
(47890,'2023-02-10', 'rebutjat', 'No seleccionat', 254, 59871),
(56981,'2023-03-05', 'acceptat', 'Oferta acceptada', 611, 79436),
(69012,'2023-03-15', 'enviat', 'Segona ronda', 478, 10294),
(71345,'2023-04-01', 'vist', 'CV revisat', 305, 62458),
(82456,'2023-04-10', 'entrevista', 'Entrevista programada', 736, 97287),
(93567,'2023-05-05', 'rebutjat', 'No passa la seleccio', 819, 92603),
(14678,'2023-05-15', 'acceptat', 'Oferta formalitzada', 563, 42189),
(25789,'2023-06-01', 'enviat', 'Enviament inicial', 290, 87213),
(36890,'2023-06-10', 'vist', 'Revisio CV', 142, 27345),
(47901,'2023-07-05', 'entrevista', 'Entrevista telefonica', 387, 34578),
(58012,'2023-07-15', 'rebutjat', 'No adequat', 254, 59871),
(69123,'2023-08-01', 'acceptat', 'Contracte signat', 611, 79436),
(70234,'2023-08-10', 'enviat', 'Nova candidatura', 478, 10294),
(81345,'2023-09-05', 'vist', 'CV avaluat', 305, 62458),
(92456,'2023-09-15', 'entrevista', 'Segona entrevista', 736, 97287),
(13567,'2023-10-01', 'rebutjat', 'No seleccionat', 819, 92603),
(24678,'2023-10-10', 'acceptat', 'Incorporacio confirmada', 563, 42189),
(35789,'2023-11-01', 'enviat', 'Candidatura enviada', 290, 87213),
(46890,'2023-11-10', 'vist', 'CV vist', 142, 27345),
(57901,'2023-12-05', 'entrevista', 'Entrevista presencial', 387, 34578),
(68012,'2023-12-15', 'rebutjat', 'No aprovat', 254, 59871),
(79123,'2024-01-01', 'acceptat', 'Oferta acceptada', 611, 79436),
(80234,'2024-01-10', 'enviat', 'Nou enviament', 478, 10294),
(91345,'2024-02-05', 'vist', 'Revisio CV', 305, 62458),
(12456,'2024-02-15', 'entrevista', 'Entrevista final', 736, 97287),
(26890,'2024-03-01', 'rebutjat', 'No seleccionat', 819, 92603),
(34678,'2024-03-10', 'acceptat', 'Incorporacio confirmada', 563, 42189),
(45789,'2025-01-11', 'enviat', 'Primer contacte', 290, 87213);

 --insertar los campos en matriculat que tienen relación con las tablas cicle, alumne y evaluación
INSERT INTO matriculat (id_alumne, id_cicle, id_avaluacio) VALUES
(101, 1023, 1),
(102, 2154, 2),
(103, 4301, 3),     
(104, 1023, 4),
(105, 2154, 5),
(106, 4301, 6),
(107, 1023, 7),
(108, 2154, 8),
(109, 4301, 1),
(110, 1023, 2),
(111, 2154, 3),
(112, 4301, 4),
(113, 1023, 5),
(114, 2154, 6),
(115, 4301, 7),
(116, 1023, 8),
(117, 2154, 1),
(118, 4301, 2),
(119, 1023, 3),
(120, 2154, 4);
