--количество исполнителей в каждом жанре;
select count(artist_name) as N_of_artists, genre_name from artist_genre ag
join artist a on ag.artist_id = a.id
join genre g on ag.genre_id = g.id
group by g.genre_name
order by N_of_artists desc;

--количество треков, вошедших в альбомы 2019-2020 годов;
select count(track_name) as tracks_from_2019_20 from tracks t
left join album al on t.id = al.id
where album_year_of_issue between 2019  and 2020;

--средняя продолжительность треков по каждому альбому;
select album_name, avg(track_duration) as average_duration from album a
join tracks t on a.id = t.id
group by album_name order by average_duration desc;

--все исполнители, которые не выпустили альбомы в 2020 году;
select a.artist_name from artist a
where a.id not in (
    select a.id from artist
    inner join artist_album aa on a.id = aa.artist_id
    inner join album a2 on aa.album_id = a2.id
    where a2.album_year_of_issue = 2020)
group by a.artist_name
order by a.artist_name;

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select compilation_name, artist_name from compilation c 
join tracks t on c.id = t.id 
join album a on t.id = a.id 
join artist a2 on a.id = a2.id 
where artist_name = 'Metallica'

--название альбомов, в которых присутствуют исполнители более 1 жанра;
select album_name from artist_genre ag 
full join artist_album aa on aa.artist_id = ag.artist_id 
full join album a on a.id = aa.album_id 
group by a.album_name 
having count(ag.artist_id) >1;

--наименование треков, которые не входят в сборники;
select track_name from tracks t 
left join compilation_track ct on t.id = ct.track_id 
where ct.track_id is null;

--исполнителя(-ей), написавшего самый короткий по продолжительности трек 
--(теоретически таких треков может быть несколько)
select artist_name from artist a 
full join artist_album aa on a.id = aa.artist_id 
full join album a2 on aa.album_id = a2.id
full join tracks t on t.album_id = a2.id
where track_duration = (select min(track_duration) from tracks);

--название альбомов, содержащих наименьшее количество треков;
select album_name, count(*) as number_of_tracks from album a 
full join tracks t on a.id = t.album_id 
group by album_name
having count(*) = (select min(minimum) from (select count(*) AS minimum from tracks group by album_id ) as xxx);