-- Crie uma consulta que retorne apenas as colunas "Name", "Composer" e "AlbumId" da tabela "tracks"
SELECT
name, composer, AlbumID
FROM
tracks;

-- Repita a consulta anterior e dessa vez filtre os registros para que retornem apenas as tracks com o atributo "AlbumId" igual a 1
SELECT
name, composer, AlbumID, GenreId
FROM
tracks
WHERE
AlbumId = 1;