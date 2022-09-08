-- 1、查询特定的列
-- 示例：查询出所有员工的编号和姓名
select eid,ename from emp;
-- 练习：查询出所有员工的姓名，性别，生日，工资
select ename,sex,birthday,salary from emp;

-- 2、查询所有的列
select eid,ename,sex,birthday,salary,dept_id from emp;
select * from emp;

--3、给列起别名
-- 示例：查询出所有员工的编号和姓名，使用一个字母作为别名
select eid as a,ename as b from emp;
-- 练习：查询出所有员工的姓名，性别，工资，使用1个字母作为别名
select ename a,sex b,salary c from emp;

-- 4、显示不同的记录
-- 示例：查询出员工都分布在哪些部门
select distinct dept_id from emp;
-- 练习：查询出都有哪些性别的员工
select distinct sex from emp;

-- 5、查询时执行计算
-- 示例：查询出所有员工的姓名及其年薪
select ename,salary*12 annual_salary from emp;
-- 练习：假设每个员工工资增长2000，年终奖30000，查询出所有员工的姓名及其年薪，使用一个字母作为别名
select ename a,(salary+2000)*12+30000 annual_salary from emp;

-- 6、查询的结果排序
-- 默认升序，字符串按编码排序

-- 示例：查询出所有部门，结果按编号升序
-- asc -> ascendant 升序的
select * from dept order by did asc;
-- 示例：查询出所有部门，结果按编号降序
-- desc -> descendant 降序的
-- desc -> describe 描述
select * from dept order by did desc;
-- 练习：查询出所有员工，结果按工资降序
select * from emp order by salary desc;
-- 练习：查询出所有员工，结果按年龄降序
select * from emp order by birthday;
-- 练习：查询出所有员工，结果按姓名升序
select * from emp order by ename;
-- 练习：查询出所有员工，结果按工资降序，工资相同按姓名升序
select * from emp order by salary desc,ename;
-- 练习：查询出所有员工，按性别升序，性别相同按年龄降序
select * from emp order by sex asc,birthday asc;

-- 7、条件查询
-- 示例：查询出编号为5的员工
select * from emp where eid=5;
-- 练习：查询出姓名为 图图 的员工
select * from emp where ename='图图';
-- 练习：查询出所有的女员工
select * from emp where sex='女';
-- 练习：查询出20号部门的员工
select * from emp where dept_id=20;
-- 练习：查询出工资>8000的员工
select * from emp where salary>8000;

-- 比较运算符：<  >  >=  <=  =  !=

-- 练习：查询出不在20号部门的员工
select * from emp where dept_id!=20;
-- 练习：查询出没有明确部门的员工
select * from emp where dept_id is null;
-- 练习：查询出有明确部门的员工
select * from emp where dept_id is not null;
-- 练习：查询出工资在8000~10000之间的员工
select * from emp where salary>=8000 && salary<=10000;
-- 练习：查询出salary<8000的男员工
select * from emp where salary<8000 && sex='男';
select * from emp where salary<8000 and sex='男';
-- 练习：查询出salary<8000或salary>10000的员工
select * from emp where salary<8000 || salary>10000;
-- 查询出20号部门或30号部门的员工
select * from emp where dept_id=20 || dept_id=30;
select * from emp where dept_id=20 or dept_id=30;
-- 练习：查询出不在20号部门并且不在30号部门的员工
select * from emp where dept_id!=20 && dept_id!=30;
select * from emp where dept_id not in (20,30);
-- 练习：查询出工资在6000~10000之间的男员工，结果按工资降序
select * from emp where salary>=6000 && salary<=10000 && sex='男' order by salary desc;
