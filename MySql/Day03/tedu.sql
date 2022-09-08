set names utf8;
drop database if exists tedu;
create database tedu charset = utf8;
use tedu;

create table dept(
	did int primary key auto_increment,
	dname varchar(16) unique
);
insert into dept values(10,'研发部');
insert into dept values(20,'运营部');
insert into dept values(30,'市场部');
insert into dept values(40,'测试部');


create table emp(
	eid int primary key auto_increment,
	ename varchar(16) not null,
	sex boolean default 1, -- 1-男 0-女
	birthday date,
	salary decimal(7,2), -- 99999.99
	dept_id int,
	foreign key(dept_id) references dept(did)
);
insert into emp values(1,'图图',default,'2000-10-6',10000,10);
insert into emp values(null,'秀晶','女','2000-7-20',8888,10);
INSERT INTO emp VALUES(NULL,'Tom',1,'1990-5-5',6000,20);
INSERT INTO emp VALUES(NULL,'Jerry',0,'1991-8-20',7000,10);
INSERT INTO emp VALUES(NULL,'David',1,'1995-10-20',3000,30);
INSERT INTO emp VALUES(NULL,'Maria',0,'1992-3-20',5000,10);
INSERT INTO emp VALUES(NULL,'Leo',1,'1993-12-3',8000,20);
INSERT INTO emp VALUES(NULL,'Black',1,'1991-1-3',4000,10);
INSERT INTO emp VALUES(NULL,'Peter',1,'1990-12-3',10000,10);
INSERT INTO emp VALUES(NULL,'Franc',1,'1994-12-3',6000,30);
INSERT INTO emp VALUES(NULL,'Tacy',1,'1991-12-3',9000,10);
INSERT INTO emp VALUES(NULL,'Lucy',0,'1995-12-3',10000,20);
INSERT INTO emp VALUES(NULL,'Jone',1,'1993-12-3',8000,30);
INSERT INTO emp VALUES(NULL,'Lily',0,'1992-12-3',12000,10);
INSERT INTO emp VALUES(NULL,'Lisa',0,'1989-12-3',8000,10);
INSERT INTO emp VALUES(NULL,'King',1,'1988-12-3',10000,10);
INSERT INTO emp VALUES(NULL,'Brown',1,'1993-12-3',22000,NULL);