#PREENCHENDO TABELA
INSERT INTO cursos VALUES
('1','HTML5','Curso de HTML5','40','37','2014'),
('2','Algoritmos','Lógica de Programação','20','15','2014'),
('3','Photoshop','Dicas de Photoshop CC','10','8','2014'),
('4','PHP','Curso de PHP','40','20','2018'),
('5','Java','Introdução a Linguagem Java','10','29','2000'),
('6','MySQL','Bancos de dados MYSQL','30','15','2016'),
('7','Word','Curso completo de Word','40','30','2016'),
('8','Sapateado','Danças Ritmicas','40','30','2018'),
('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
('10','Youtuber','Fazer vídeos para internet','5','2','2018');

UPDATE cursos SET carga = '50' WHERE idcurso = 5;
UPDATE cursos SET ano = '2017' WHERE idcurso IN (5,9,10);

DELETE FROM cursos WHERE idcurso IN (8,9,10);

TRUNCATE TABLE cursos;