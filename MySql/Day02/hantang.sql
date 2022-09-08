set names utf8;
drop database if exists hantang;

create database hantang charset = utf8;
use hantang;

-- 创建“轮播图”数据表
create table ht_banner(
	bid tinyint primary key,
	pic varchar(100),
	href varchar(128)
);
insert into ht_banner values(1,'img/banner1.jpg','www.111.com');
insert into ht_banner values(2,'img/banner2.jpg','www.222.com');

-- 创建“新闻分类”数据表
create table ht_cat(
	cid int primary key,
	cname varchar(16) unique
);
insert into ht_cat values(10,'公司动态');
insert into ht_cat values(20,'产品资讯');
insert into ht_cat values(30,'业界资讯');

-- 创建“新闻列表”数据表
create table ht_news(
	nid int primary key auto_increment,
	title varchar(32),
	ctime date,
	detail varchar(2048),
	cat_id int,
	-- 将cat——id列作为外键，他的值须在ht_cat出现过
	foreign key(cat_id) references ht_cat(cid)
);
insert into ht_news values(2,'标题2','2022-8-28','detail',20);
insert into ht_news values(1,'标题1','2022-8-29','detail',10);
insert into ht_news values(4,'标题4','2022-8-30','detail',30);
insert into ht_news values(3,'标题3','2022-8-31','detail',30);
insert into ht_news values(null,'标题5','2022-8-31','detail',30);

-- 创建“关于汉唐”数据表
create table ht_about(
	aid smallint primary key,
	title varchar(32) default '未知',
	detail varchar(1024)
);
insert into ht_about values(1,'公司简介','北京汉唐资产管理集团有限公司');
insert into ht_about values(2,'董事长致辞','时光如梭，岁月如歌。');
insert into ht_about values(3,'公司大事件','汉唐亿利恒丰投资管理有限公司获得私募证券基金备案资格。');
insert into ht_about values(4,'旗下公司','北京京盛典当行有限公司');
insert into ht_about values(5,default,'标题默认值测试');
-- 应用默认值的另一种方式
insert into ht_about(aid,detail) values(6,'标题默认值测试');

-- 创建“公司大事件”数据表
create table ht_event(
	eid smallint primary key,
	title varchar(32),
	-- 给时间设置默认值
	ctime date default '2022-8-31'
);
insert into ht_event values(1,'汉唐亿利恒丰投资管理有限公司获得私募证券基金备案资格。','2015-1-22');
insert into ht_event values(2,'汉唐凌和资本管理有限公司获得私募股权基金备案资格。','2015-1-22');
insert into ht_event values(3,'北京汉唐资产管理有限公司与联想控股建立项目合作机制。','2015-1-9');
-- default 会去找时间这一列的默认值 关键字不加引号
insert into ht_event values(4,'默认值测试',default);

-- 创建“旗下公司”数据表
create table ht_member(
	mid smallint primary key,
	mname varchar(32) unique not null
);
insert into ht_member values(1,'北京京盛典当行有限公司');
insert into ht_member values(2,'北京亿利恒丰投资管理有限公司');
insert into ht_member values(3,'北京汉唐凌和资本管理有限公司');