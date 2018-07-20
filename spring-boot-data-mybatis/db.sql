create table department(
	dpid int primary key auto_increment,
    dpname varchar(20) not null
)engine=InnoDB charset=utf8;

create table employee(
	empid int primary key auto_increment,
    lastname varchar(20) not null,
    email varchar(20),
    gender int,
    dpid int not null
)engine=InnoDB charset=utf8;
alter table employee
	add constraint FK_EMPLOYEE_DEPARTMENT_ID foreign key(dpid) references department(dpid) on delete cascade;


-- ###面试
-- 交易流水表
create table trade(traid int primary key auto_increment,`time` datetime,money int,`type` varchar(10),pid int not null) engine=InnoDB charset=utf8;
-- 人物表 rel关系
create table person(pid int primary key auto_increment,name varchar(10),gender varchar(5),rel varchar(5)) engine=InnoDB charset=utf8;
alter table trade
	add constraint FK_TRADE_PERSON_PID foreign key (pid) references person(pid) on delete cascade;
insert into person values(null,'君莫笑','男','同学'),(null,'晓鸣','女','朋友'),(null,'云南','男','朋友'),(null,'赵子龙','男','同学'),(null,'小喇','男','亲戚'),(null,'刘邦','男','亲戚');
insert into trade values(null,'2018-02-20 14:00:05',50,'微信',1),(null,'2018-02-25 14:00:05',100,'现金',4),(null,'2018-03-21 22:00:05',999,'支付宝',2),(null,'2018-02-25 14:00:05',100,'微信',3),(null,'2018-05-25 12:00:05',200,'现金',5),(null,'2018-04-19 16:08:05',100,'支付宝',6);

select sum(money) from trade where time > str_to_date('2018年2月26日','%Y年%c月%d日');
-- 查询2月15日到现在 金额大于100 所有女性亲戚的名字和红包金额
select p.name,p.gender,t.money from trade t join person p on t.pid = p.pid where t.time >  str_to_date('2018年2月26日','%Y年%c月%d日') and t.money > 100 and p.gender = '女' ;
-- 查询三个平台分别收入的红包金额
select type,sum(money) from trade where money > 0 group by type;

-- 视图 view
-- create view 视图名 as (子查询)
-- 什么是视图：数据库中存在多种对象，表和视图都是数据库中的对象，视图本质上是一段sql查询语句，可以理解为是一张虚拟表，视图没有自己独立的数据，数据会随着原表改变而改变。
-- 为什么使用视图：因为有些数据的查询需要书写大量的sql语句，每次书写比较麻烦，使用视图可以起到SQL的重用的作用，可以隐藏敏感信息。
create view v_emp_10 as (select * from emp where deptno = 10) with check option;
drop view v_emp_10;
create view v_emp_20 as (select ename,deptno,sal from emp where deptno=20 and sal < 3000);
create view v_emp_sal_sum as (select sum(sal),avg(sal),max(sal),min(sal) from emp group by deptno);
-- 视图分类
-- 1.简单视图： 创建视图的子查询中不包含：去重，函数，分组，关联查询的视图称为简单视图，可对视图中的数据进行增删改操作
-- 2.复杂视图： 和简单视图相反，只能对复杂视图中的数据进行操作
-- 对简单视图中的数据进行增删改操作
select * from emp;
select * from  v_emp_10;
insert into v_emp_10 (empno,ename,deptno,sal) values(1003,'WANGWU',10,9800);
-- 数据污染： 往视图中插入一条视图中不可见，但是在原表中存在的数据，称为数据污染，如果需要避免数据污染的出现，可以使用with check option关键字
-- 在视图中修改和删除数据；修改和删除不会出现类似数据污染的问题
-- 修改视图： create or replace view 视图名 as 子查询
-- 删除视图： drop view xxx
-- 视图别名： 

select * from my_db.department;
select * from my_db.employee;

create database db_test;
use db_test;
create table dept(dpid int primary key auto_increment,dpname varchar(20) not null);
create table emp(empid int primary key auto_increment,empname varchar(20), dpid int,constraint FK_EMP_DEPT_DPID foreign key(dpid) references dept(dpid));
show create table emp;
alter table emp
	drop foreign key FK_EMP_DEPT_DPID;
-- myisam 引擎不支持外键约束


-- 索引
-- 1. 什么时索引： 索引时数据库用来提高查询效率的技术，类似于字典中的目录
-- 2. 为什么使用索引： 如果不使用索引，数据会零散的保存在磁盘块中，查询数据需要挨个遍历每一个磁盘块，直到找到数据为止，使用索引后，磁盘块会以树状结构对数据进行保存，查询数据时会大大降低磁盘块的访问数量，从而提高查询效率。
-- 3. 索引越多越好吗？ 不是，因为索引会占用磁盘空间，对常用的写在查询条件后面的字段创建索引。
-- 4. 有索引一定好吗？ 不是，如果数据量小，添加索引可能会降低查询效率。

-- 索引分类
-- 1.聚集索引（聚簇索引）： 一个表只有一个聚集索引，通过主键创建的索引称为聚集索引。数据库会自动为添加了主键约束的表增加聚集索引，在聚集索引中保存这查询依据和数据。
-- 2.非聚集索引：通过非主键字段创建的索引称为聚集索引，在非聚集索引中保存着查询依据和地址（没有数据）


-- 事务的ACID特性
-- Atomictity 原子性： 最小 不可拆分，保证全部成功或者全部失败
-- Consistency 一致性： 从一个一致状态到另一个一致状态
-- Isolation 隔离性： 多个事务之间互不影响
-- Durability 持久性： 事务提交后数据持久保存到数据中
-- 相关命令： 
-- 1.查看自动提交状态： show variables like '%autocommit%';
-- 2.提交： commit;
-- 3.回滚： rollback
-- 4.设置回滚点： savepoint xx;
-- 5.回滚到指定回滚点： rollback to xx;



