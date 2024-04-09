-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists"
SELECT
tra.TrackId as id,
tra.Name as musica,
alb.title as album,
art.Name as artista
FROM
tracks as tra
INNER JOIN albums as alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists as art ON art.ArtistId = alb.ArtistId
WHERE
art.name LIKE 'Gilberto%';

-- Refatore a consulta anterior usando a cláusula "with" e verifique o total de músicas existente na base de terminado artista, ex: Caetano Veloso
WITH musicas as(
SELECT
tra.TrackId as id,
tra.Name as musica,
alb.title as album,
art.Name as artista
FROM
tracks as tra
INNER JOIN albums as alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists as art ON art.ArtistId = alb.ArtistId
)

SELECT
artista,
COUNT(musica) as qtd_total_musicas
FROM musicas
WHERE
artista LIKE 'Caetano%';

