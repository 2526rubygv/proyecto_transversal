-- creacio de empreses per la BBDD
INSERT INTO empresa (id_empresa, nom, sector, contacte, ubicacio, modalitat_practica) VALUES 
('Capgemini', 'Consultoria tecnologica y servicios IT', 'Maria Lopez', 'Barcelona', 'ambdues'),
('Apple', 'Tecnologia de consumo y hardware/software', 'Carlos Garcia', 'Barcelona', 'intensiva'),
('SAP', 'Software empresarial (ERP y analisis de datos)', 'Ana Martinez', 'Barcelona', 'general'),
('Google', 'Desarrollo de software, IA y servicios en la nube', 'Jose Fernandez', 'Barcelona', 'ambdues'),
('Hewlett Packard Enterprise (HPE)', 'Infraestructura tecnologica y soluciones en la nube', 'Laura Sanchez', 'Barcelona', 'general'),
('Q2BSTUDIO', 'Desarrollo tecnologico e innovacion digital', 'David Rodriguez', 'Barcelona', 'intensiva'),
('Accenture', 'Consultoria tecnologica y outsourcing', 'Marta Perez', 'Barcelona', 'ambdues'),
('Amazon Web Services (AWS)', 'Servicios en la nube e infraestructura digital', 'Juan Gomez', 'Barcelona', 'general'),
('Oracle', 'Software de bases de datos y soluciones empresariales en la nube', 'Isabel Torres', 'Barcelona', 'intensiva'),
('Terracom', 'Desarrollo de software a medida', 'Luis Hernandez', 'Barcelona', 'ambdues');

--creacio de cicles
INSERT INTO cicle (id_cicle, nom_cicle, promocio) VALUES
('DAM', '2023'),
('DAW', '2021'),
('ASIX', '2020');

--creacio d'alumnes per la BBDD
INSERT INTO alumne (id_alumne, nom, cognom, dni, nass, telefono, estat_alumne, ra2_ipo, data_inici, data_fi, tutor_empresa, estat_assignada, id_empresa) VALUES
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

--creacio exemples d'avaluacio
INSERT INTO avaluacio (id_avaluacio, observacio, treball_equip, autonomia, comunicacio, puntualitat, nivell_tecnic, puntuacio, actitud) VALUES
('Bona participacio en equip', 8, 7, 9, 10, 8, 8, 9),
('Millorable en autonomia', 6, 5, 7, 8, 6, 7, 7),
('Excellent comunicacio', 9, 8, 10, 9, 9, 9, 10),
('Puntualitat destacada', 7, 6, 8, 10, 7, 8, 8),
('Nivell tecnic alt', 8, 7, 9, 9, 10, 9, 9),
('Actitud positiva i proactiva', 9, 9, 9, 8, 8, 9, 10),
('Treball en equip correcte', 7, 6, 7, 7, 7, 7, 8),
('Pot millorar en puntualitat', 6, 7, 6, 6, 6, 6, 7);

--creacio exemples d'enviament
INSERT INTO enviament (id_enviament, data_enviament, estat, notes, id_cv, id_empresa) VALUES
('2023-01-10', 'enviat', 'Primer contacte amb l\'empresa', 1, 1),
('2023-01-15', 'vist', 'El CV ha estat vist', 2, 2),
('2023-02-01', 'entrevista', 'Convocat a entrevista', 3, 3),
('2023-02-10', 'rebutjat', 'No seleccionat', 4, 4),
('2023-03-05', 'acceptat', 'Oferta acceptada', 5, 5),
('2023-03-15', 'enviat', 'Segona ronda', 6, 6),
('2023-04-01', 'vist', 'CV revisat', 7, 7),
('2023-04-10', 'entrevista', 'Entrevista programada', 8, 8),
('2023-05-05', 'rebutjat', 'No passa la seleccio', 9, 9),
('2023-05-15', 'acceptat', 'Oferta formalitzada', 10, 10),
('2023-06-01', 'enviat', 'Enviament inicial', 11, 1),
('2023-06-10', 'vist', 'Revisio CV', 12, 2),
('2023-07-05', 'entrevista', 'Entrevista telefonica', 13, 3),
('2023-07-15', 'rebutjat', 'No adequat', 14, 4),
('2023-08-01', 'acceptat', 'Contracte signat', 15, 5),
('2023-08-10', 'enviat', 'Nova candidatura', 16, 6),
('2023-09-05', 'vist', 'CV avaluat', 17, 7),
('2023-09-15', 'entrevista', 'Segona entrevista', 18, 8),
('2023-10-01', 'rebutjat', 'No seleccionat', 19, 9),
('2023-10-10', 'acceptat', 'Incorporacio confirmada', 20, 10),
('2023-11-01', 'enviat', 'Candidatura enviada', 1, 1),
('2023-11-10', 'vist', 'CV vist', 2, 2),
('2023-12-05', 'entrevista', 'Entrevista presencial', 3, 3),
('2023-12-15', 'rebutjat', 'No aprovat', 4, 4),
('2024-01-01', 'acceptat', 'Oferta acceptada', 5, 5),
('2024-01-10', 'enviat', 'Nou enviament', 6, 6),
('2024-02-05', 'vist', 'Revisio CV', 7, 7),
('2024-02-15', 'entrevista', 'Entrevista final', 8, 8),
('2024-03-01', 'rebutjat', 'No seleccionat', 9, 9),
('2024-03-10', 'acceptat', 'Incorporacio confirmada', 10, 10);
