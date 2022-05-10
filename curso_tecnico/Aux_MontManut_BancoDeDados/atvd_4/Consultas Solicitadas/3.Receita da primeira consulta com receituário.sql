/*3. Receituário completo da primeira consulta registrada com receituário associado.*/
SELECT *
FROM receita
WHERE idReceita = 1 AND Consulta_id >= 1;