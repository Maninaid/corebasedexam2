create database examDB

create table EMP8(
Empid int not null,
Name varchar(55),
Salary int,
Deptno int);
insert into Emp8 values(1,'lokesh',5000,10);
insert into Emp8 values(2,'vijay',12000,20);
insert into Emp8 values(3,'krishna',50000,30);

select * from EMP8;

create table EMP8
(
EMPId int primary key,
Name varchar(25)not null,
salary int,
Deptno int
)



select * from emp8



--a. accept only 10,20,30 as deptno



alter table emp8
add constraint colcheck check( deptno between 10 and 30)



-- b. Every employee salary must be in the range of 5000 to 50000 only
alter table emp8
add constraint salcheck check( salary between 5000 and 50000)