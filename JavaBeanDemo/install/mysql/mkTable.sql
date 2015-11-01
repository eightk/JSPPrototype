create table dept (
deptno int(2) primary key,
dname varchar(14),
loc varchar(13)
);

create table emp (
empno int(4) primary key,
ename varchar(10),
job varchar(9),
hiredate date,
sal float(7,2),
comm float(7,2),
mgr int(4),
deptno int(2),
FOREIGN KEY (deptno) REFERENCES dept(deptno)
);

create table product (
pid int primary key,
name varchar(50),
note blob,
price float(7,2),
amount int(5),
count int(5)
);

create table member (
mid varchar(50) primary key,
password varchar(32),
name varchar(30),
address varchar(200),
telephone varchar(100),
zipcode varchar(6),
lastvisit date
);

