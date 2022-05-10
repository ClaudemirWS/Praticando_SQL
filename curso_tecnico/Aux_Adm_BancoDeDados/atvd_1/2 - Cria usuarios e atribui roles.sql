CREATE USER 'user_relatorio'@'localhost' IDENTIFIED BY 'userpass987';
CREATE USER 'user_funcionario'@'localhost' IDENTIFIED BY 'userpass852';
GRANT 'relatorio' TO 'user_relatorio'@'localhost';
GRANT 'funcionario' TO 'user_funcionario'@'localhost';