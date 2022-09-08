-- 设置客户端连接服务器端编码为utf-8
set names utf8;
-- 丢弃数据库 如果存在
drop database if exists hangtang;
-- 创建新的数据库 设置存储字符的编码为utf8
create database hangtang charset=utf8;
-- 进入创建的数据库
use hangtang;
-- 创建数据表
create table recommend(
	rid int,
	name varchar(2),
	phone varchar(11),
	email varchar(32),
	detail varchar(2000),
	ctime varchar(10)
);

insert into recommend values('1','图图','12345678910','foxmail','no','2022-08-30');
insert into recommend values('2','秀晶','1222220','163mail','nocode','2022-08-31');
-- 修改数据
update recommend set phone='111111',email='qqmail' where rid='1';
-- 删除数据
delete from recommend where rid='2';


-- 查询数据
-- select * from recommend;