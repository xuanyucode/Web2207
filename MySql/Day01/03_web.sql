drop database if exists web;

-- 开始创建数据库
create database web;
use web;
create table student(
	id int,
	name varchar(16),
	sex varchar(1),
	score int
);

insert into student values('1','tutu','M',('66'));
insert into student values('2','jing','W',('99'));
-- 查询数据 *查询所有列
select * from student;
