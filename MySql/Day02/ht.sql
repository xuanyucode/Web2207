set names utf8;
drop database if exists ht;

create database ht charset = utf8;
use ht;
create table news(
	nid int,
	title varchar(32),
	ctime varchar(11),
	origin varchar(16),
	detail varchar(2000)
);

insert into news values('1','标题1号','2022-08-30','origin','detaildetail');
insert into news values('2','标题2号','2022-08-31','origin','detaildetail');

update news set nid='01',origin='no origin' where nid='1';

delete from news where nid='01';