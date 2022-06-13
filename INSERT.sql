insert into artist(artist_name)
values
	('Metallica'),
	('Megadeth'),
	('Children of Bodom'),
	('Amon Amarth'),
	('Arch Enemy'),
	('In flames'),
	('Deep Purple'),
	('ZAZ'),
	('Король и шут'),
	('Motorhead'),
	('Ария');

insert into genre(genre_name)
values
	('thrash metal'),
	('melodic death metal'),
	('hard rock'),
	('pop'),
	('punk'),
	('heavy metal'),
	('russian rock');
	
insert into artist_genre(artist_id, genre_id)
values
	(1,1),
	(1,6),
	(2,1),
	(2,6),
	(3,2),
	(4,2),
	(5,2),
	(6,2),
	(7,3),
	(7,6),
	(8,4),
	(9,4),
	(10,3),
	(10,6),
	(11,3),
	(11,7);
	
insert into album (album_name, album_year_of_issue, artist_name)
values 
	('Kill''em all', 1983, 'Metallica'),
	('Ride the lightning', 1984, 'Metallica'),
	('Peace sells but who''s buying', 1986, 'Megadeth'),
	('Countdown to extinction', 1992, 'Megadeth'),
	('Hatebreeder', 1999, 'Childrend of Bodom'),
	('Twilight of the Thunder God', 2008, 'Amon Amarth'),
	('Deceiver of the Gods', 2013, 'Amon Amarth'),
	('War Eternal', 2014, 'Arch Enemy'),
	('Will to Power', 2017, 'Arch Enemy'),
	('Clayman', 2000, 'In flames'),
	('Deep Purple in rock', 1970, 'Deep Purple'),
	('Machine Head', 1972, 'Deep Purple'),
	('ZAZ', 2010, 'ZAZ'),
	('Paris', 2014, 'ZAZ'),
	('Камнем по голове', 1996, 'Король и шут' ),
	('Бунт на корабле', 2004, 'Король и шут'),
	('Overkill', 1979, 'Motorhead'),
	('Ace of spades', 1980, 'Motorhead'),
	('Герой асфальта', 1988, 'Ария'),
	('Игра с огнем', 1989,'Ария');

insert into album (album_name, album_year_of_issue, artist_name)
values 
	('Hexed', 2018, 'Children of Bodom')
	
insert into artist_album (artist_id, album_id)
values 
(1,1),
(1,2),
(2,3),
(2,4),
(3,5),
(4,6),
(4,7),
(5,8),
(5,9),
(6,10),
(7,11),
(7,12),
(8,13),
(8,14),
(9,15),
(9,16),
(10,17),
(10,18),
(11,19),
(11,20);

insert into artist_album (artist_id, album_id)
values 
	(3,21)

insert into tracks (album_id, track_name, track_duration)
values
	(1,'The four horsemen', 7.13),
	(1, 'Seek and Destroy', 6.55),
	(2, 'Fight fire with fire',4.45),
	(2, 'For whom the bell tolls', 5.09),
	(3, 'Wake up dead', 3.37),
	(3, 'Peace sells',4.04),
	(4, 'Symphony of Destruction',4.05),
	(5, 'Wrath Within', 3.35),
	(5, 'Children of Bodom', 5.13),
	(6, 'Twilight of the Thunder God', 4.09),
	(7, 'Guardians of Asgaard',4.23),
	(8, 'War Eternal', 4.16),
	(8, 'Stolen life', 2.59),
	(9, 'The eagle flies alone', 5.15),
	(10, 'Bullet Ride', 4.42),
	(11, 'Speed king', 5.49),
	(11, 'Child in time', 10.14),
	(12, 'Highway Star', 6.04),
	(13, 'Je veux', 3.33),
	(15, 'Проказник скоморох',1.52),
	(16, 'Хозяин леса', 3.14),
	(17, 'Overkill',5.12),
	(18, 'Ace of spades',3.50),
	(19, 'Герой асфальта',5.11),
	(19, '1100', 4.55),
	(20,'Игра с огнем',9.04),
	(20,'Раб страха',4.40),
	(21, 'This road',4.33),
	(3,'In my darkest hour', 4.55);

	
insert into compilation (compilation_name, release_year)
values 
	('Monsters of rock vol.1', 2002),
	('Monsters of rock vol.2', 2004),
	('Best of heavy metal vol.1', 2015),
	('Best of heavy metal vol.2', 2017),
	('Best of heavy metal vol.3', 2019),
	('The best collection vol.1', 2018),
	('The best collection vol.1', 2019),
	('The best collection vol.1', 2020);
	

insert into compilation_track (compilation_id, track_id)
values 
	(1,16),
	(1,17),
	(2,20),
	(2,21),
	(2,12),
	(3,15),
	(3,5),
	(4,1),
	(4,2),
	(4,11),
	(5,3),
	(5,4),
	(5,5),
	(6,6),
	(6,7),
	(7,8),
	(7,9),
	(7,10),
	(8,22),
	(8,23),
	(8,17);