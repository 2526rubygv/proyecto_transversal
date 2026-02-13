-- creacio de empreses per la BBDD
INSERT INTO empresa (nom, sector, contacte, ubicacio, modalitat_practica) VALUES 
('Capgemini', 'Consultoria tecnologica y servicios IT', 'Maria Lopez', 'Barcelona', 'ambdues'),
('Apple', 'Tecnologia de consumo y hardware/software', 'Carlos Garcia', 'Barcelona', 'intensiva'),
('SAP', 'Software empresarial', 'Ana Martinez', 'Barcelona', 'general'),
('BCN22', 'Desarrollo de software, IA y servicios en la nube', 'Jose Fernandez', 'Barcelona', 'ambdues'),
('HP', 'Cloud', 'Laura Sanchez', 'Barcelona', 'general'),
('Q2BSTUDIO', 'I+D', 'David Rodriguez', 'Barcelona', 'intensiva'),
('Accenture', 'Outsourcing', 'Marta Perez', 'Barcelona', 'ambdues'),
('AWS', 'Cloud', 'Juan Gomez', 'Barcelona', 'general'),
('Oracle', 'Cloud i BBDD ', 'Isabel Torres', 'Barcelona', 'intensiva'),
('Terracom', 'Software', 'Luis Hernandez', 'Barcelona', 'ambdues');

--creacio de cicles
INSERT INTO cicle (id_cicle, nom_cicle, promocio) VALUES
('DAM', '2023'),
('DAW', '2021'),
('ASIX', '2020');

--creacio exemples d'avaluacio
INSERT INTO avaluacio (observacio, treball_equip, autonomia, comunicacio, puntualitat, nivell_tecnic, puntuacio, actitud) VALUES
('Bona participacio en equip', 8, 7, 9, 10, 8, 8, 9),
('Millorable en autonomia', 6, 5, 7, 8, 6, 7, 7),
('Excellent comunicacio', 9, 8, 10, 9, 9, 9, 10),
('Puntualitat destacada', 7, 6, 8, 10, 7, 8, 8),
('Nivell tecnic alt', 8, 7, 9, 9, 10, 9, 9),
('Actitud positiva i proactiva', 9, 9, 9, 8, 8, 9, 10),
('Treball en equip correcte', 7, 6, 7, 7, 7, 7, 8),
('Pot millorar en puntualitat', 6, 7, 6, 6, 6, 6, 7);

--creacio d'alumnes per la BBDD
INSERT INTO alumne (nom, cognom, dni, nass, telefono, estat_alumne, ra2_ipo, data_inici, data_fi, tutor_empresa, estat_assignada, id_empresa) VALUES
('Raul', 'Garcia', '12345678A', '612345678901', '612 345 678', 'actiu', 'aprovat', '2023-01-15', '2023-06-15', 'Maria Lopez', 'assignada', 1),
('Nicolas', 'Gonzalez', '23456789B', '613456789012', '613 456 789', 'inactiu', 'no aprovat', '2021-02-01', '2021-07-01', 'Carlos Garcia', 'no assignada', 2),
('Javi', 'Rodriguez', '34567890C', '614567890123', '614 567 890', 'actiu', 'aprovat', '2020-03-10', '2020-08-10', 'Ana Martinez', 'assignada', 3),
('Dmitry', 'Vladmodich', '45678901D', '615678901234', '615 678 901', 'actiu', 'aprovat', '2025-04-20', '2025-09-20', 'Jose Fernandez', 'assignada', 4),
('Mathieu', 'Montpeilleur', '56789012E', '616789012345', '616 789 012', 'inactiu', 'no aprovat', '2022-05-05', '2022-10-05', 'Laura Sanchez', 'no assignada', 5),
('Tom', 'Johnson', '67890123F', '617890123456', '617 890 123', 'inactiu', 'no aprovat', '2024-06-15', '2024-11-15', 'David Rodriguez', 'no assignada', 6),
('Pietra', 'Milano', '78901234G', '618901234567', '618 901 234', 'actiu', 'aprovat', '2019-07-01', '2019-12-01', 'Marta Perez', 'assignada', 7),
('Lorena', 'del Mar', '89012345H', '619012345678', '619 012 345', 'inactiu', 'no aprovat', '2020-08-10', '2021-01-10', 'Juan Gomez', 'no assignada', 8),
('Lucia', 'Martinez', '90123456J', '620123456789', '620 123 456', 'actiu', 'aprovat', '2023-09-20', '2024-02-20', 'Isabel Torres', 'assignada', 9),
('Araceli', 'Novo', '01234567K', '621234567890', '621 234 567', 'inactiu', 'no aprovat', '2025-10-01', '2026-03-01', 'Luis Hernandez', 'no assignada', 10),
('Pietro', 'Di Marco', '11223344L', '622345678901', '622 345 678', 'actiu', 'aprovat', '2024-11-15', '2025-04-15', 'Maria Lopez', 'assignada', 1),
('Dorian', 'Marseille', '22334455M', '623456789012', '623 456 789', 'actiu', 'aprovat', '2021-12-01', '2022-05-01', 'Carlos Garcia', 'assignada', 2),
('Mikaela', 'dePrince', '33445566N', '624567890123', '624 567 890', 'inactiu', 'no aprovat', '2022-01-20', '2022-06-20', 'Ana Martinez', 'no assignada', 3),
('Beatriz', 'Ortiz', '44556677P', '625678901234', '625 678 901', 'inactiu', 'no aprovat', '2019-02-10', '2019-07-10', 'Jose Fernandez', 'no assignada', 4),
('Lua', 'Papasseit', '55667788Q', '626789012345', '626 789 012', 'actiu', 'aprovat', '2023-03-15', '2023-08-15', 'Laura Sanchez', 'assignada', 5),
('Marc', 'Canigo', '66778899R', '627890123456', '627 890 123', 'inactiu', 'no aprovat', '2025-04-25', '2025-09-25', 'David Rodriguez', 'no assignada', 6),
('Carles', 'Soler', '77889900S', '628901234567', '628 901 234', 'actiu', 'aprovat', '2020-05-30', '2020-10-30', 'Marta Perez', 'assignada', 7),
('Genis', 'Pujol', '88990011T', '629012345678', '629 012 345', 'inactiu', 'no aprovat', '2024-06-10', '2024-11-10', 'Juan Gomez', 'no assignada', 8),
('Xenia', 'Capdevila', '99001122U', '630123456789', '630 123 456', 'actiu', 'aprovat', '2022-07-20', '2022-12-20', 'Isabel Torres', 'assignada', 9),
('Estel', 'Valls', '10101010V', '631234567890', '631 234 567', 'inactiu', 'no aprovat', '2021-08-15', '2022-01-15', 'Luis Hernandez', 'no assignada', 10);

--creacio exemples d'cv
INSERT INTO CV (data_creacio, actualitzacio, enllac, estat_cv, id_alumne) VALUES
('2023-01-10', '2023-02-15', 'https://drive.google.com/drive/cv/raul_garcia.pdf', 'completat', 21),
('2023-03-22', '2023-03-25', 'https://drive.google.com/drive/cv/nicolas_gonzalez.pdf', 'pendent', 22),
('2023-05-05', '2023-06-10', 'https://drive.google.com/drive/cv/javi_rodriguez.pdf', 'completat', 23),
('2023-08-14', '2023-09-01', 'https://drive.google.com/drive/cv/dmitry_vlad.pdf', 'completat', 24),
('2023-11-30', '2023-12-05', 'https://drive.google.com/drive/cv/mathieu_mont.pdf', 'revisió', 25),
('2024-01-15', '2024-01-20', 'https://drive.google.com/drive/cv/tom_johnson.pdf', 'pendent', 26),
('2024-02-10', '2024-03-12', 'https://drive.google.com/drive/cv/pietra_milano.pdf', 'completat', 27),
('2024-04-01', '2024-04-05', 'https://drive.google.com/drive/cv/lorena_mar.pdf', 'revisió', 28),
('2024-05-20', '2024-06-15', 'https://drive.google.com/drive/cv/lucia_martinez.pdf', 'completat', 29),
('2024-07-08', '2024-07-10', 'https://drive.google.com/drive/cv/araceli_novo.pdf', 'pendent', 30),
('2024-09-12', '2024-10-01', 'https://drive.google.com/drive/cv/pietro_marco.pdf', 'completat', 31),
('2024-10-25', '2024-11-05', 'https://drive.google.com/drive/cv/dorian_mars.pdf', 'completat', 36),
('2024-12-01', '2024-12-10', 'https://drive.google.com/drive/cv/mikaela_prince.pdf', 'revisió', 37),
('2025-01-05', '2025-01-07', 'https://drive.google.com/drive/cv/beatriz_ortiz.pdf', 'pendent', 38),
('2023-04-18', '2023-05-20', 'https://drive.google.com/drive/cv/lua_papas.pdf', 'completat', 39),
('2023-09-29', '2023-10-15', 'https://drive.google.com/drive/cv/marc_canigo.pdf', 'completat', 40),
('2024-03-14', '2024-03-20', 'https://drive.google.com/drive/cv/carles_soler.pdf', 'revisió', 41),
('2024-06-22', '2024-07-01', 'https://drive.google.com/drive/cv/genis_pujol.pdf', 'pendent', 42),
('2024-08-19', '2024-09-05', 'https://drive.google.com/drive/cv/xenia_cap.pdf', 'completat', 43),
('2025-01-20', '2025-02-01', 'https://drive.google.com/drive/cv/estel_valls.pdf', 'completat', 42);

--creacio exemples d'enviament
INSERT INTO enviament (data_enviament, estat, notes, id_cv, id_empresa) VALUES
('2023-01-15', 'vist', 'El CV ha estat vist', 79, 2),
('2023-02-01', 'entrevista', 'Convocat a entrevista', 80, 3),
('2023-02-10', 'rebutjat', 'No seleccionat', 81, 4),
('2023-03-05', 'acceptat', 'Oferta acceptada', 82, 5),
('2023-03-15', 'enviat', 'Segona ronda', 83, 6),
('2023-04-01', 'vist', 'CV revisat', 84, 7),
('2023-04-10', 'entrevista', 'Entrevista programada', 85, 8),
('2023-05-05', 'rebutjat', 'No passa la seleccio', 86, 9),
('2023-05-15', 'acceptat', 'Oferta formalitzada', 87, 10),
('2023-06-01', 'enviat', 'Enviament inicial', 88, 1),
('2023-06-10', 'vist', 'Revisio CV', 89, 2),
('2023-07-05', 'entrevista', 'Entrevista telefonica', 90, 3),
('2023-07-15', 'rebutjat', 'No adequat', 91, 4),
('2023-08-01', 'acceptat', 'Contracte signat', 92, 5),
('2023-08-10', 'enviat', 'Nova candidatura', 93, 6),
('2023-09-05', 'vist', 'CV avaluat', 94, 7),
('2023-09-15', 'entrevista', 'Segona entrevista', 95, 8),
('2023-10-01', 'rebutjat', 'No seleccionat', 96, 9),
('2023-10-10', 'acceptat', 'Incorporacio confirmada', 97, 10),
('2023-11-01', 'enviat', 'Candidatura enviada', 98, 1),
('2023-11-10', 'vist', 'CV vist', 88, 2),
('2023-12-05', 'entrevista', 'Entrevista presencial', 85, 3),
('2023-12-15', 'rebutjat', 'No aprovat', 90, 4),
('2024-01-01', 'acceptat', 'Oferta acceptada', 87, 5),
('2024-01-10', 'enviat', 'Nou enviament', 86, 6),
('2024-02-05', 'vist', 'Revisio CV', 82, 7),
('2024-02-15', 'entrevista', 'Entrevista final', 85, 8),
('2024-03-01', 'rebutjat', 'No seleccionat', 81, 9),
('2024-03-10', 'acceptat', 'Incorporacio confirmada', 80, 10),
('2025-01-11', 'enviat', 'Primer contacte', 79, 1);

 --insertar los campos en matriculat que tienen relación con las tablas cicle, alumne y evaluación
INSERT INTO matriculat (id_alumne, id_cicle, id_avaluacio) VALUES
(21, 2, 1),
(22, 2, 2),
(23, 3, 3),
(24, 3, 4),
(25, 4, 5),
(26, 4, 6),
(27, 2, 7),
(28, 3, 8),
(29, 2, 1),
(30, 3, 2),
(31, 4, 3),
(36, 4, 4),
(37, 2, 5),
(38, 3, 6),
(39, 4, 7),
(40, 2, 8),
(41, 3, 1),
(42, 4, 2),
(43, 2, 3),
(44, 3, 4);

--ejemplo 1 modificar la tabla de matriculat, inserir, actualizar y eliminar
INSERT INTO matriculat (id_alumne, id_cicle, id_avaluacio)
VALUES (21, 2, 1);

UPDATE matriculat
SET id_avaluacio = 2
WHERE id_alumne = 21
AND id_cicle = 2;

DELETE FROM matriculat
WHERE id_alumne = 21
AND id_cicle = 2;

-- ejemplo 2 modificar la tabla de enviament, inserir, actualizar y eliminar
INSERT INTO enviament (data_enviament, estat, notes, id_cv, id_empresa)
VALUES ('2025-02-01', 'enviat', 'Candidatura enviada', 79, 1);

UPDATE enviament
SET estat = 'entrevista',
    notes = 'Convocat a entrevista'
WHERE id_cv = 79
AND id_empresa = 1
AND estat = 'enviat';

DELETE FROM enviament
WHERE id_cv = 79
AND id_empresa = 1
AND estat = 'entrevista';

--ejemplo 3 modificar la tabla de cv, inserir, actualizar y eliminar
INSERT INTO cv (data_creacio, actualitzacio, enllac, estat_cv, id_alumne)
VALUES ('2025-01-20', NULL, 'https://drive.google.com/drive/cv/raul_update.pdf', 'pendent', 21);

UPDATE cv
SET estat_cv = 'completat', actualitzacio = '2025-01-25'
WHERE id_alumne = 21
AND estat_cv = 'pendent';

DELETE FROM cv
WHERE id_alumne = 21
AND enllac LIKE '%raul_update%';

--ejemplo 4 modificar la tabla de alumne, inserir, actualizar y eliminar
INSERT INTO alumne (nom, cognom, dni, nass, telefono, estat_alumne, ra2_ipo, id_empresa)
VALUES ('Eric', 'Marti', '11112222Z', '640123456789', '640 123 456', 'actiu', 'aprovat', 1);

UPDATE alumne
SET estat_alumne = 'inactiu'
WHERE dni = '11112222Z';

DELETE FROM alumne
WHERE dni = '11112222Z';