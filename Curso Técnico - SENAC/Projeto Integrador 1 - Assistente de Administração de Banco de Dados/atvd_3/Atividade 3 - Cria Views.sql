#VIEW QUE LISTA STREAMING COM FILMES CADASTRADOS
CREATE VIEW streamings_com_filmes_na_lista AS
    SELECT DISTINCT
        S.Nome
    FROM
        lista_de_filmes AS F,
        streaming AS S
    WHERE
        F.Streaming_id = S.id_Streaming;

#VIEW QUE LISTA STREAMING COM SÉRIES CADASTRADAS
CREATE VIEW streamings_com_series_na_lista AS
    SELECT DISTINCT
        ST.Nome
    FROM
        lista_de_series AS S,
        streaming AS ST
    WHERE
        S.Streaming_id = ST.id_Streaming;

#VIEW QUE LISTA TODAS AS SÉRIES NA LISTA
CREATE VIEW series_na_lista AS
    SELECT DISTINCT
        S.Nome AS 'Nome da Serie',
        ST.Nome AS 'Streaming',
        G.Nome AS 'Gênero'
    FROM
        lista_de_series AS S,
        streaming AS ST,
        genero AS G
    WHERE
        S.Streaming_id = ST.id_Streaming
            AND S.Genero_id = G.id_Genero;

#VIEW QUE LISTA TODOS OS FILMES NA LISTA
CREATE VIEW filmes_na_lista AS
    SELECT DISTINCT
        F.Nome AS 'Nome do Filme',
        ST.Nome AS 'Streaming',
        G.Nome AS 'Gênero'
    FROM
        lista_de_filmes AS F,
        streaming AS ST,
        genero AS G
    WHERE
        F.Streaming_id = ST.id_Streaming
            AND F.Genero_id = G.id_Genero;