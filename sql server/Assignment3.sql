select * from tblemployee

select * from tblDepartment

--1. List the name and salary for all employees whose salary is not in the range of 1500 and 2850.
SELECT Ename, Sal
FROM tblemployee
WHERE Sal NOT BETWEEN 1500 AND 2850
--2. Display the name and job of all employees who do not have a MANAGER. 
Select Ename, Job
From tblemployee
Where MGR_Id is Null
--3. Display the name, job, and salary of all the employees whose job is MANAGER or ANALYST and their salary is not equal to 1000, 3000, or 5000. 
SELECT Ename,Job, Sal
FROM tblemployee
WHERE Job IN ('MANAGER', 'ANALYST')
AND Sal NOT IN (1000,3000, 5000);
--4. Display the name, salary and commission for all employees whose commission amount is greater than their salary increased by 10%. 
SELECT Ename, Sal, Comm
FROM tblemployee
WHERE Comm>(Sal+((Sal*10)/100));

--5. Display the name of all employees who have two Ls in their name and are in department 30 or their manager is 7782. 
SELECT Ename 
FROM tblemployee 
where (Ename LIKE '%R%R' OR Ename LIKE '%A%A') AND (Deptno=30 OR MGR_Id=7782);
--6. Display the names of employees with experience of over 10 years and under 20 yrs. Count the total number of employees. 
select count(*) as No_of_employees,Ename from tblemployee
where CONVERT(varchar(3),DATEDIFF(Year,HireDate,getdate()))>10
And CONVERT(varchar(3),DATEDIFF(Year,HireDate,getdate()))>20
Group By Ename


--7. Retrieve the names of departments in ascending order and their employees in descending order. 
SELECT * FROM tblemployee
ORDER BY Deptno ASC,
         Ename DESC;

--8. Find out experience of MILLER. 
select DATEDIFF(YY,'1982/01/23','2022/05/30') AS DOB_NOOF_DAYS

--9. How many different departments are there in the employee table.
SELECT Deptno, COUNT(*)
FROM tblemployee
GROUP BY Deptno;

--10. Find out which employee either work in SALES or RESEARCH department. 
select * from tblemployee
where Deptno in(select Deptno from tblDepartment
where Dname in ('sales','Research'))


--11. Print the name and average salary of each department. 
select ename,avg(sal) as 'salary' from tblemployee
group by deptno,ename;
--12. Select the minimum and maximum salary from employee table.
SELECT MAX(Sal), MIN(Sal) 
     FROM tblemployee;
 
--13. Select the minimum and maximum salaries from each department in employee table. 
SELECT Deptno, max(Sal) as MaxSalary, min(Sal) as MinSalary 
from tblemployee 
group by Deptno  

--14. Select the details of employees whose salary is below 1000 and job is CLERK. 
select * from tblemployee
where sal<1000 and job = 'clerk'
