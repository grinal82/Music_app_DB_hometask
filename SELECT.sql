--название и год выхода альбомов, вышедших в 2018 году
select album_name, album_year_of_issue
from album
where album_year_of_issue = 2018;

--название и продолжительность самого длительного трека
select track_name, track_duration from tracks order by track_duration desc limit 1

--название треков, продолжительность которых не менее 3,5 минуты
select track_name
from tracks
where track_duration >=3.5;

--названия сборников, вышедших в период с 2018 по 2020 год включительно
select compilation_name
from compilation
where release_year > 2017 and release_year < 2021;

--исполнители, чье имя состоит из 1 слова
select * from artist where artist_name not like '% %';

--название треков, которые содержат слово "мой"/"my"
select * from tracks where track_name ILIKE '%my%';