count()/sum()/avg()/max()/min()
数量     总和  平均  最大   最小
-- 查询出所有员工的数量
select count(*) from emp;
-- 使用编号列查询数量 推荐使用主键列
select count(eid) from emp;
-- 使用所属部门编号列查询数量
select count(dept_id) from emp;
-- 查询出所有女员工工资总和
select sum(salary) from emp where sex='女';
-- 查询出20号部门的平均工资
select avg(salary) from emp where dept_id=20;
-- 10号部门最高工资
select max(salary) from emp where dept_id=10;
-- 年龄最大女员工
select min(birthday) from emp where sex='女';


-- 分组查询
-- 查询出男女员工的数量、工资总和 分别是多少
select count(eid),sum(salary),sex,ename from emp group by sex;
-- 查询出各部门平均工资，最高工资，最低工资
select avg(salary),max(salary),min(salary),dept_id from emp group by dept_id;
-- 函数：year() 获取日期中的年份部分
select year('2022-9-1'); --2022
-- 查询出1990年出生的员工
select * from emp where year(birthday)=1990;
-- 查询出每个员工的姓名及其出生的年份
select ename,year(birthday) from emp;


-- 子查询 ：多个查询命令的组合，把一个查询结果作为另一个的查询条件
-- 查询出年龄最大的女员工
-- 步骤1：查询出年龄最大的女员工的生日
select min(birthday) from emp where sex='女';
-- 步骤2：通过生日查询员工
select * from emp where birthday='1989-12-3';
-- 综合
select * from emp where birthday=(select min(birthday) from emp where sex='女');
-- 查询出高于平均工资的员工有哪些
select * from emp where salary>(select avg(salary) from emp);
-- 查询出和秀晶同一个部门的员工
select * from emp where dept_id=(select dept_id from emp where ename='秀晶') && ename !='秀晶';
-- 查询和Tom同一年出生的员工
select * from emp where year(birthday)=(select year(birthday) from emp where ename='Tom') && ename !='Tom';



-- 多表查询 ：要查询的列分布在多个表中
-- 查询出所有员工的姓名及其部门名称
select ename,dname from emp,dept where dept_id=did;
select emp.ename,dept.dname,emp.salary from emp,dept where emp.dept_id=dept.did;
-- 内连接 
select ename,dname from emp inner join dept on dept_id=did;