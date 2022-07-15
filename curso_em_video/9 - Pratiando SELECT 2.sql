#CURSOS QUE INCLUEM A PALAVRA HTML
SELECT * FROM cursos WHERE nome LIKE '%HTML%';

#CURSOS INICIADOS COM P
SELECT * FROM cursos WHERE nome LIKE 'P%' ORDER BY idcurso;

#CURSOS INICIADOS COM PH E TERMINADOS COM P
SELECT nome FROM cursos WHERE nome LIKE 'PH%P_';

#NOMES TERMINADOS COM SILVA
SELECT nome FROM gafanhotos WHERE nome LIKE '%_SILVA%';

#LISTA CARGAS HORÁRIAS 
SELECT DISTINCT carga FROM cursos;

#QUANTIDADE DE CURSOS CADASTRADOS
SELECT COUNT(nome) FROM cursos;

#MAIOR CARGA HORÁRIA ENTRE OS CURSOS
SELECT MAX(carga) FROM cursos;

#MENOR CARGA HORÁRIA ENTRE OS CURSOS
SELECT MIN(carga) FROM cursos;

#SOMA O TOTAL DE AULAS DA TABELA
SELECT SUM(totaulas) FROM cursos;

#MÉDIA DO TOTAL DE AULAS DA TABELA
SELECT AVG(totaulas) FROM cursos;

#MAIOR ALTURA ENTRE HOMENS QUE MORAM NO BRASIL
SELECT MAX(altura) FROM gafanhotos WHERE
sexo = 'M' AND nacionalidade = 'Brasil';

#MÉDIA DE PESO DE PESSOAS CADASTRADAS
SELECT AVG(peso) FROM gafanhotos;