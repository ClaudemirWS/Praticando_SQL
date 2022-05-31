DELIMITER // 
#LISTA FILMES POR STREAMING PESQUISADO
CREATE procedure filmes_por_streaming(streaming VARCHAR(45))
BEGIN
SELECT DISTINCT 
    LF.Nome AS 'Filme', S.Nome AS 'Streaming', G.Nome AS 'Gênero'
FROM
    lista_de_filmes AS LF,
    streaming AS S,
    genero AS G
WHERE
	streaming = S.Nome
	AND LF.Streaming_id = S.id_Streaming
    AND LF.Genero_id = G.id_Genero;
END //
DELIMITER ; 

DELIMITER // 
#LISTA SÉRIES POR STREAMING PESQUISADO
CREATE procedure series_por_streaming(streaming VARCHAR(45))
BEGIN
SELECT DISTINCT 
    LS.Nome AS 'Série', S.Nome AS 'Streaming', G.Nome AS 'Gênero'
FROM
    lista_de_series AS LS,
    streaming AS S,
    genero AS G
WHERE
	streaming = S.Nome
	AND LS.Streaming_id = S.id_Streaming
    AND LS.Genero_id = G.id_Genero;
END //
DELIMITER ; 

DELIMITER //
#PESQUISA O STREAMING POR NOME DO FILME
CREATE FUNCTION pesquisa_streaming_de_filme ( Nome_do_filme VARCHAR(45) )
RETURNS VARCHAR(45) DETERMINISTIC 
BEGIN
	DECLARE Mensagem VARCHAR(45);
    #RELACIONA NOME PESQUISADO A LISTA DE SÉRIES
	SET Nome_do_filme = (SELECT LF.Nome FROM lista_de_filmes AS LF WHERE Nome_do_filme = LF.Nome);
	#RETORNA DADOS DO FILME OU MENSAGEM DE INEXISTENTE
    IF Nome_do_filme IS NOT NULL THEN
		RETURN (SELECT DISTINCT S.Nome
        FROM lista_de_filmes AS LF, streaming AS S
        WHERE Nome_do_filme = LF.Nome
        AND LF.Streaming_id = S.id_Streaming);
	ELSE
		SET Mensagem = "Filme não encontrado.";
		RETURN Mensagem ;
	END IF;
END; //
DELIMITER ;

DELIMITER //
#PESQUISA O STREAMING POR NOME DA SÉRIE
CREATE FUNCTION pesquisa_streaming_de_serie ( Nome_da_serie VARCHAR(45) )
RETURNS VARCHAR(45) DETERMINISTIC 
BEGIN
	DECLARE Mensagem VARCHAR(45);
    #RELACIONA NOME PESQUISADO A LISTA DE SERIES
	SET Nome_da_serie = (SELECT LS.Nome FROM lista_de_series AS LS WHERE Nome_da_serie = LS.Nome);
	#RETORNA DADOS DO FILME OU MENSAGEM DE INEXISTENTE
    IF Nome_da_serie IS NOT NULL THEN
		RETURN (SELECT DISTINCT S.Nome
        FROM lista_de_series AS LS, streaming AS S
        WHERE Nome_da_serie = LS.Nome
        AND LS.Streaming_id = S.id_Streaming);
	ELSE
		SET Mensagem = "Série não encontrada.";
		RETURN Mensagem ;
	END IF;
END; //
DELIMITER ;