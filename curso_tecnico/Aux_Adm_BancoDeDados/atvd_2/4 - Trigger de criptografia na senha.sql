/*4 - Crie um trigger que atue sobre a tabela “usuário” de modo que, ao incluir um novo usuário, 
aplique automaticamente MD5() à coluna “senha”.
*/
#APAGA TRIGGER SE EXISTIR
DROP TRIGGER IF EXISTS MD5_Senha;

#CRIA TRIGGER QUE INSERE MD5 NA SENHA
DELIMITER //
CREATE TRIGGER MD5_Senha BEFORE INSERT ON usuario
FOR EACH ROW
BEGIN
    SET NEW.senha = md5(NEW.senha);
END//
DELIMITER ;

#INSERE NOVO VALOR PARA TESTE
INSERT INTO usuario (login, senha, ultimo_login) values ('claudemir', 123456, 20220516);