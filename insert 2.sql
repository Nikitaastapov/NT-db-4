INSERT INTO singer 
VALUES(1, 'Linkin Park'),
VALUES(2, 'Limp Bizkit'),
VALUES(3, 'Порнофильмы'), 
VALUES(4, 'Rammstein'), 
VALUES(5, 'Nirvana'),
VALUES(6, 'ДДТ'), 
VALUES(7, 'Алиса'),
VALUES(8, 'Ария')
RETURNING *;

INSERT INTO singer 
VALUES(9, 'L`one');

INSERT INTO genre 
VALUES(1, 'Рок'),
VALUES(2, 'Классическая'),
VALUES(3, 'Поп'),
VALUES(4, 'Хип-хоп'), 
VALUES(5, 'Регги'),
VALUES(6, 'Электронная')
RETURNING *;

INSERT INTO genre 
VALUES(7, 'Джаз');


INSERT INTO website  
VALUES(1, 1), 
VALUES(2, 2),
VALUES(3, 3), 
VALUES(4, 4),  
VALUES(5, 5), 
VALUES(6, 6),  
VALUES(7, 7), 
VALUES(8, 1)
RETURNING *;

INSERT INTO singergenre 
VALUES(1, 6),
VALUES(1, 1),  
VALUES(2, 1), 
VALUES(2, 6),  
VALUES(3, 1), 
VALUES(4, 1),
VALUES(5, 1), 
VALUES(6, 1), 
VALUES(7, 1),  
VALUES(8, 1),  
VALUES(9, 4), 
VALUES(9, 6)
RETURNING *;

INSERT INTO album  
VALUES(default, 2017, 'One More Light');

INSERT INTO song  
VALUES(default, 'One More Light', 4.15 , 1);

INSERT INTO song  
VALUES(default, 'Battle Symphony', 3.36 , 1);


INSERT INTO album  
VALUES(default, 2011, 'Gold Cobra');

INSERT INTO song  
VALUES(default, 'Bring It Back', 2.17 , 2);

INSERT INTO song  
VALUES(default, 'Loser', 4.53 , 2);

INSERT INTO song  
VALUES(default, 'Walking Away', 4.45 , 2);


INSERT INTO album  
VALUES(default, 2016, 'Как в последний раз');

INSERT INTO song  
VALUES(default, 'Как в последний раз', 5.39 , 3);

INSERT INTO song  
VALUES(default, 'Прости. Прощай. Привет', 5.09 , 3);


INSERT INTO album  
VALUES(default, 2001, 'Mutter');

INSERT INTO song  
VALUES(default, 'Ich will', 3.37 , 4);

INSERT INTO song  
VALUES(default, 'Links 1 2 3', 3.36 , 4);

INSERT INTO song  
VALUES(default, 'Sonne', 4.32 , 4);


INSERT INTO album  
VALUES(default, 1991, 'Nevermind');

INSERT INTO song  
VALUES(default, 'Smells Like Teen Spirit', 5.01 , 5);

INSERT INTO song  
VALUES(default, 'Stay Away', 3.32 , 5);


INSERT INTO album  
VALUES(default, 2002, 'Единочество. Часть I');

INSERT INTO song  
VALUES(default, 'Поэт', 6.03 , 6);

INSERT INTO song  
VALUES(default, 'Мама, это рок-н-ролл', 5.04 , 6);


INSERT INTO album  
VALUES(default, 2012, 'Саботаж');

INSERT INTO song  
VALUES(default, 'Ангел', 6.02 , 7);

INSERT INTO song  
VALUES(default, 'Левша', 4.04 , 7);


INSERT INTO album  
VALUES(default, 1991, 'Кровь за кровь ');

INSERT INTO song  
VALUES(default, 'Антихрист', 5.04 , 8);

INSERT INTO song  
VALUES(default, 'Следуй за мной!', 4.42 , 8);

INSERT INTO album  
VALUES(default, 2019, 'Пангея');

INSERT INTO song  
VALUES(default, 'К счастю', 3.33 , 9);

INSERT INTO song  
VALUES(default, 'Феникс', 3.45 , 9);

INSERT INTO album  
VALUES(default, 2020, 'Восход 1');

INSERT INTO song  
VALUES(default, 'Я есть пламя', 2.32 , 10);

INSERT INTO song  
VALUES(default, 'Поход', 2.55 , 10);


INSERT INTO albumsinger 
VALUES(1,1),
VALUES(2,2), 
VALUES(3,3), 
VALUES(4,4),
VALUES(5,5),
VALUES(6,6),
VALUES(7,7),
VALUES(8,8), 
VALUES(9,9)
RETURNING *;


INSERT INTO collection  
VALUES(default,'Russians-1',2022), 
VALUES(default,'Russians-2',2021),  
VALUES(default,'Russians-3',2020),
VALUES(default,'Rock',2022), 
VALUES(default,'RR',2018),
VALUES(default,'RR',2020,  
VALUES(default,'USA Rock 1',2020), 
VALUES(default,'USA Rock 2',2021)
RETURNING *;

INSERT INTO collectionname  
VALUES(1,7), 
VALUES(2,8),
VALUES(3,7),
VALUES(4,8), 
VALUES(6,1),  
VALUES(7,2),  
VALUES(8,5), 
VALUES(9,6),
VALUES(10,5),  
VALUES(12,6), 
VALUES(13,1), 
VALUES(14,2),
VALUES(15,3), 
VALUES(16,4), 
VALUES(17,3), 
VALUES(18,4)
RETURNING *;

select * from singer;
select * from genre;
select * from website;
select * from singergenre;
select * from album;
select * from song;
select * from albumsinger;
select * from collection;
select * from collectionname;
