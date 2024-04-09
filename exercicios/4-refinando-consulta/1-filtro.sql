-- Crie uma consulta para realizar inner join com as tabelas "tracks", "albums" e "artists". Além disso, apresente apenas as músicas do artista que contenha "Nação" no nome e título do álbum que não seja "Da Lama Ao Caos"
SELECT
tra.TrackId as id,
tra.Name as musica,
alb.Title as titulo_album,
art.Name as artista
FROM
tracks as tra
INNER JOIN albums as alb ON tra.AlbumId = alb.AlbumId
INNER JOIN artists as art ON art.ArtistId = alb.ArtistId
WHERE
artista LIKE '%Nação%'
AND
titulo_album NOT LIKE 'Da Lama Ao Caos';