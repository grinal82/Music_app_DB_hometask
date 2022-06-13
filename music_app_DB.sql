CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL primary key,
	artist_name varchar(40) not null
);

create table if not exists Genre (
	id serial primary key,
	genre_name varchar(20) not null
);

create table if not exists Artist_Genre (
	artist_id integer references Artist(id),
	genre_id integer references Genre(id),
	constraint pk primary key (artist_id, genre_id)
);

create table if not exists Album (
	id serial primary key,
	album_name varchar(60) not null,
	album_year_of_issue integer,
	artist_name varchar(40)
);

create table if not exists Artist_Album (
	artist_id integer references Artist(id),
	album_id integer references Album(id),
	constraint prim_k primary key (artist_id, album_id)
);

create table if not exists Tracks (
	id serial primary key,
	album_id integer not null references Album(id),
	track_name varchar(40) not null,
	track_duration numeric(10,2)
);

create table if not exists Compilation (
	id serial primary key not null,
	compilation_name varchar(40) not null,
	release_year integer not null
);

create table if not exists Compilation_Track (
	compilation_id integer references Compilation(id),
	track_id integer references Tracks(id),
	constraint pr_k primary key (compilation_id, track_id)
);


create table if not exists Compilation_Track(
compilation_id integer references Compilation(id),
track_id integer references Tracks(id),
constraints pk primary key (compilation_id, track_id)
);