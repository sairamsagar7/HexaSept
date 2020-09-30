select * from Emp;

select max(sal) from Emp;

/* Display the name of person who is getting max. salary */ 

select ename from Emp where sal=max(sal);

select ename from Emp where sal = (select max(sal) from Emp);

-- Display the 2nd max. salary 

select max(sal) from Emp where sal < (select max(sal) from Emp);

