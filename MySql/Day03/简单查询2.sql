-- 8、模糊条件查询
-- 示例：查询出姓名中含有字母e的员工
-- %匹配符号，匹配任意个字符 >=0
select * from emp where ename like '%e%';
-- 练习：查询姓名以e结尾的员工
select * from emp where ename like '%e';
-- 练习：查询