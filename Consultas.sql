SELECT a.id_alumne, nom, cognom, puntuacio
FROM alumne a
JOIN matriculat m ON m.id_alumne = a.id_alumne 
JOIN avaluacio av ON av.id_avaluacio = m.id_avaluacio
ORDER BY puntuacio DESC ;