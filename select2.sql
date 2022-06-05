select genre_name, count(singer_name)  from singer
join singergenre on singergenre.singer_name_id = singer.id
join genre on genre.id = singergenre.genre_name_id
group by genre_name

select count(track_name) from song
join album on album.id = song.id_album
where album_year between '2019' and '2020'

select round(avg(track_dur),2) as av_dur, album_name from song
join album on album.id = song.id_album
group by album_name

"""select singer_name, album_name, album_year from singer
join albumsinger on albumsinger.singer_name_id = singer.id 
join album on album.id = albumsinger.album_name_id
where singer_name in (
select singer_name from singer
where album_year = '2020')

После not in - встроенного запроса - все равно попадает в выборку ненужный исполнитель
"""

select singer_name from singer
where singer_name not in(
select singer_name from singer
join albumsinger on albumsinger.singer_name_id = singer.id 
join album on album.id = albumsinger.album_name_id
where album_year = '2020')


select collection_name, singer_name from collection
join collectionname on collectionname.collection_name_id = collection.id
join song on song.id = collectionname.collection_name_id
join album on album.id = song.id_album
join albumsinger on albumsinger.album_name_id = album.id 
join singer on singer.id = albumsinger.singer_name_id
where singer_name ilike '%%linkin park%%'


select singer_name from singer
join singergenre on singergenre.singer_name_id = singer.id
join genre on genre.id = singergenre.genre_name_id
where singer_name in ( 
select singer_name from collection
join collectionname on collectionname.collection_name_id = collection.id
join song on song.id = collectionname.track_name_id
join album on album.id = song.id_album
join albumsinger on albumsinger.album_name_id = album.id 
join singer on singer.id = albumsinger.singer_name_id
join singergenre on singergenre.singer_name_id = singer.id
join genre on genre.id = singergenre.genre_name_id)
group by singer_name
having count (genre_name)>1

select track_name from song
where track_name not in(
select track_name from collection
join collectionname on collectionname.collection_name_id = collection.id
join song on song.id = collectionname.track_name_id)

select singer_name from singer
join albumsinger on singer.id = albumsinger.singer_name_id
join album on albumsinger.album_name_id = album.id 
join song on album.id = song.id_album
where track_dur = (
select min(track_dur) from song)


min (track_min) from (
select album_name, count(track_name) as track_min from album
join song on song.id_album = album.id
group by album_name)

select album_name, count (track_name) as track_count from album
join song on song.id_album = album.id
group by album_name
having count (track_name) = (select min(track_min) from
(select album_name, count(track_name) as track_min from album
join song on song.id_album = album.id
group by album_name) as foo)


