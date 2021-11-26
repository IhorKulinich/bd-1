use books;
insert into customers values
(1, "VAsiliy Klyar", "12 vul", "Odessa"),
(2, "Elena ", "15 vul", "Kiev"),
(3, "Vitalya", "52 vul", "Herson");

insert into orders values
(NULL, 5, 56.93, "2018-02-02"),
(NULL, 2, 47.93, "2018-06-03"),
(NULL, 4, 32.93, "2018-04-02"),
(NULL, 5, 52.93, "2018-02-01");

insert into books values
("5-8459-0046-8", "Simonenko", "Algebra", 22.34),
("5-7757-0776-8", "Abuev", "Geografia", 22.34),
("5-9959-9946-8", "Petrenko", "Biology", 22.34),
("5-8859-8086-8", "KUdishkin", "Algebra", 22.34);

insert into order_items values
(1, "5-8459-0046-8", 2),
(2, "5-8459-0046-8", 5),
(1, "5-7757-0776-8", 1),
(3, "5-8859-8086-8", 1);

insert into book_reviews values
( "5-8459-0046-8", " нига рекомендована дл€ лучшего усвоени€ учебного материала 9-11 классов");