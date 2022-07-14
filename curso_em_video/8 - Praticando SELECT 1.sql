SELECT * FROM cursos
ORDER BY nome;

SELECT * FROM cursos
ORDER BY nome DESC;

SELECT nome, carga, ano FROM cursos
ORDER BY nome; 

SELECT nome, carga FROM cursos WHERE ano = 2016
ORDER BY nome;

SELECT * FROM cursos WHERE carga BETWEEN 30 AND 40
ORDER BY carga;

SELECT * FROM cursos WHERE totaulas >= 15 AND
ano IN (2016, 2017) ORDER BY ano;