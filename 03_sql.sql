/* -----------------------------------------------------------
   Proyecto SQL – Consultas de gestió FCT
----------------------------------------------------------- */

/* -----------------------------------------------------------
   1. Llistat d’alumnes amb puntuació global (ordre descendent)
   Aquesta consulta mostra tots els alumnes amb la seva puntuació.
   Es fa un JOIN amb matriculat i avaluacio per obtenir la nota.
   Finalment s’ordena de major a menor puntuació.
----------------------------------------------------------- */
SELECT a.id_alumne, nom, cognom, puntuacio
FROM alumne a
JOIN matriculat m ON m.id_alumne = a.id_alumne 
JOIN avaluacio av ON av.id_avaluacio = m.id_avaluacio
ORDER BY puntuacio DESC ;

/* -----------------------------------------------------------
   2. Top 5 alumnes per puntuació sense assignació
   Mostra els 5 alumnes amb millor puntuació que encara no tenen cap empresa assignada. 
   Es filtra per estat_assignada.
----------------------------------------------------------- */
SELECT a.id_alumne, nom, cognom, puntuacio
FROM alumne a 
JOIN matriculat m ON m.id_alumne = a.id_alumne 
JOIN avaluacio av ON av.id_avaluacio = m.id_avaluacio
WHERE estat_assignada = 'no assignada'
ORDER BY puntuacio DESC 
LIMIT 5 ;

/* -----------------------------------------------------------
   3. Per cada empresa: total de currículums rebuts i quants estan en estat “entrevista” o “acceptat”.
   S’utilitzen subconsultes perquè és SQL bàsic i fàcil d’entendre.
   La primera subconsulta compta tots els enviaments.
   La segona només compta els que estan en entrevista o acceptat.
----------------------------------------------------------- */
SELECT e.nom AS Empresa, (SELECT COUNT(*) 
                          FROM enviament en
                          WHERE en.id_empresa = e.id_empresa) AS Total_Recibidos, 
                         (SELECT COUNT(*) 
                          FROM enviament en
                          WHERE en.id_empresa = e.id_empresa 
                          AND (estat = 'entrevista' OR estat = 'acceptat')) AS Entrevista_o_Acceptat 
FROM empresa e ;

/* -----------------------------------------------------------
   4. Historial d’enviaments d’un alumne concret
   Mostra totes les empreses on un alumne ha enviat el seu CV, amb la data i l’estat de cada enviament.
----------------------------------------------------------- */
SELECT a.nom, cognom, e.nom AS empresa, data_enviament, estat
FROM alumne a 
JOIN cv c ON c.id_alumne = a.id_alumne 
JOIN enviament en ON en.id_cv = c.id_cv 
JOIN empresa e ON e.id_empresa = en.id_empresa
WHERE a.id_alumne = 101 
ORDER BY data_enviament ; 

/* -----------------------------------------------------------
   5. Alumnes amb més de X enviaments sense resposta
   Es compten els enviaments amb estat “enviat”.
   HAVING permet filtrar per quantitat mínima.
----------------------------------------------------------- */
SELECT nom, cognom, COUNT(en.id_enviament) AS enviament_total
FROM alumne a
JOIN cv c ON c.id_alumne = a.id_alumne
JOIN enviament en ON en.id_cv = c.id_cv
WHERE en.estat = 'enviat'
GROUP BY a.nom, a.cognom
HAVING COUNT(en.id_enviament) > 1;

/* -----------------------------------------------------------
   6. Informe d’assignacions actives
   Mostra alumnes que actualment estan assignats a una empresa, incloent dates i el tutor de l’empresa.
----------------------------------------------------------- */
SELECT a.nom, cognom, e.nom AS empresa, data_inici, data_fi, tutor_empresa
FROM alumne a
JOIN empresa e ON e.id_empresa = a.id_empresa
WHERE a.estat_assignada = 'assignada';

/* -----------------------------------------------------------
   7. Alumnes amb assignació però sense cap enviament acceptat
   NOT EXISTS comprova que no hi hagi cap enviament amb estat “acceptat”.
----------------------------------------------------------- */
SELECT a.nom, cognom
FROM alumne a
WHERE a.estat_assignada = 'assignada'
AND NOT EXISTS ( SELECT 1
                 FROM cv c
                 JOIN enviament en ON en.id_cv = c.id_cv
                 WHERE c.id_alumne = a.id_alumne
                 AND en.estat = 'acceptat');

/* -----------------------------------------------------------
   8. Alumnes actius amb puntuació > 7 i la mitjana global
   La subconsulta calcula la mitjana de totes les puntuacions.
   Aquesta mitjana és global i per això surt igual a totes les files.
----------------------------------------------------------- */
SELECT a.id_alumne, nom, cognom, av.puntuacio, (SELECT AVG(puntuacio) 
                                                FROM avaluacio) AS mitjana_global 
FROM alumne a 
JOIN matriculat m ON m.id_alumne = a.id_alumne 
JOIN avaluacio av ON av.id_avaluacio = m.id_avaluacio 
WHERE a.estat_alumne = 'actiu' 
AND av.puntuacio > 7;

/* -----------------------------------------------------------
   9. Empreses d’un sector concret que no han rebut cap enviament
   LEFT JOIN permet veure empreses sense enviaments.
   Si en.id_enviament és NULL, significa que no tenen cap enviament.
----------------------------------------------------------- */ 
SELECT e.nom, e.sector 
FROM empresa e 
LEFT JOIN enviament en ON en.id_empresa = e.id_empresa 
WHERE e.sector = 'Software'
AND en.id_enviament IS NULL;
--Aquesta consulta no retorna cap fila perquè totes les empreses tenen enviaments.

/* -----------------------------------------------------------
   10. Exemple addicional: empresa amb més alumnes assignats
   Comptem quants alumnes té assignats cada empresa i mostrem la líder.
----------------------------------------------------------- */
SELECT e.nom AS empresa, COUNT(a.id_alumne) AS total_alumnes 
FROM empresa e 
JOIN alumne a ON a.id_empresa = e.id_empresa
WHERE a.estat_assignada = 'assignada'
GROUP BY e.nom
ORDER BY total_alumnes DESC
LIMIT 1 ;

/* -----------------------------------------------------------
   11. Alumnes que encara estan en procés de fer el vostre CV
   Busquem a la taula de CV aquells que no estan en estat 'completat' (per exemple, 'pendent' o 'revisio').
   Això serveix per saber a quins alumnes hem de donar suport. 
   - Se selecciona l'ID de l'alumne, la data de creació del CV i l'estat actual del CV.
   - Es filtren únicament els CV l'estat dels quals NO sigui "completat".
   - Finalment, s'ordenen per data de creació de més recent a més antic.
----------------------------------------------------------- */
SELECT id_alumne, data_creacio, estat_cv 
FROM cv 
WHERE estat_cv != 'completat'
ORDER BY data_creacio DESC;

/* ----------------------------------------------------------- 
   12.Empreses ordenades per nombre dalumnes assignats 
   S'hi compten els alumnes que té assignats cada empresa. 
   Després s'ordenen de més gran a més petit per veure quins col·laboren més. 
----------------------------------------------------------- */ 
SELECT e.nom AS empresa, COUNT(a.id_alumne) AS total_assignats 
FROM empresa e 
LEFT JOIN alumne a ON a.id_empresa = e.id_empresa 
WHERE a.estat_assignada = 'assignada' -- Solo alumnos con asignación activa 
GROUP BY e.nom 
ORDER BY total_assignats DESC;
