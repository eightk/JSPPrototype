/*drop db*/
drop database if exists testdb;
/*create db*/
create database testdb;

use testdb;

drop table if exists user;

create table user (
	username varchar(40) primary key,
    password varchar(20),
	email varchar(40),
	firstname varchar(20),
	lastname varchar(20),
	age int(4),
	createdate date,
	level int(2)
);

insert into user values('Attila','Attila','a@g.com','Attila','p',34,'2015-10-22',1);
insert into user values('Ciprian','Ciprian','c@g.com','Cip','b',47,'2015-10-22',1);
insert into user values('Richard','Richard','r@g.com','Richard','l',28,'2015-10-22',5);
insert into user values('Spencer','Spencer','s@g.com','Spencer','h',25,'2015-10-22',1);
insert into user values('Carla','Carla','ca@g.com','Carla','m',23,'2015-10-22',1);