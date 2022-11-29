USE uc4atividades;

CREATE ROLE 'relatorio', 'funcionario';
GRANT SELECT ON *.* TO 'relatorio';
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.venda TO 'funcionario';
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.cliente TO 'funcionario';
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.produto TO 'funcionario';