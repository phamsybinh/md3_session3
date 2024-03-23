create database qlsach;
use qlsach;
create table author(
id int primary key auto_increment,
fullName varchar(50) not null,
birthday date
);
create table book(
id int primary key auto_increment,
bookName varchar(100) unique not null,
price float check(price>0),
pulisher_year int,
author_id int not null,
foreign key(author_id) references author(id)
);
insert into author(fullName, birthday) values (
'To Huu','1750/12/01'
);
insert into author(fullName, birthday) values (
'Nguyen Du','1950/12/01'
);
select * from author;
insert into book(bookName,price,pulisher_year,author_id) value ('Truyen Kieu',200,2017,2);
insert into book(bookName,price,pulisher_year,author_id) value ('Dat Nuoc',200,2000,1);


-- cap nhat ten tac gia co id 1
update author set fullName = 'Nam Cao' , birthday = '1850-12-6' where id = 2;
update book set pulisher_year = '2000' where id = 2;
-- xoa sach co id
delete from book where id = 1;
delete from book where author_id =1;
select * from book;
select 

