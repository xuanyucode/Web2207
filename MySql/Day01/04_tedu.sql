drop database if exists wed;
drop database if exists tedu;

create database tedu;
use tedu;
create table emp(
	eid int,
	ename varchar(16),
	phone int,
	addr varchar(64)
);