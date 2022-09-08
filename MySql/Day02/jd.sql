set names utf8;
drop database if exists jd;

create database jd charset = utf8;
use jd;
create table product(
	pid int primary key,
	title varchar(64),
	pic varchar(128),
	price decimal(7,2),
	stime date,
	isonsale boolean,
	stock smallint
);

insert into product values(2,'小米手机','fake.jpg','19999','2022-8-30','false','0');
insert into product values(1,'苹果手机','true.jpg','1999',null,'true','50');


