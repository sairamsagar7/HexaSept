-- How to see List of tables 

show tables;

-- Display information about Emp table 

DESC Emp;

-- Display all records from Emp Table 

SELECT * FROM Emp;

-- Display Empno, ename, Job, Sal from Emp Table 

SELECT Empno, Ename, Job, Sal
FROM EMP 

-- { Project Operator }

SELECT * FROM EMP Where SAL > 2000;

SELECT * FROM EMP WHERE JOB='MANAGER';

SELECT * FROM EMP WHERE ENAME='SCOTT';

-- BETWEEN...AND : Used to display records from start to end range 

SELECT * FROM EMP WHERE SAL BETWEEN 1000 AND 2000;

SELECT * FROM EMP WHERE SAL NOT BETWEEN 1000 AND 2000;

-- LIKE : Used to display records w.r.t. Wildcards 

SELECT * FROM EMP WHERE ENamE LIKE 'S%';

SELECT * FROM EMP WHERE ENAME LIKE '%S';

SELECT * FROM EMP WHERE ENAME LIKE 'J___S';

-- IN Keyword : Used to display particular column valued records 

SELECT * FROM EMP WHERE JOB IN('CLERK','MANAGER');

SELECT * FROM EMP WHERE JOB NOT IN('CLERK','MANAGER');

SELECT EMPNO, ENAME, JOB, MGR,SAL from EMP 
ORDER BY JOB;

SELECT EMPNO, ENAME, JOB, MGR,SAL from EMP 
ORDER BY JOB,ENAME;

SELECT EMPNO, ENAME, JOB, MGR,SAL from EMP 
ORDER BY JOB, ENAME DESC;

-- If you want to eliminate duplicates at display time, then we need the help of distinct 

select Job from EMp;

select distinct JOB from Emp;

select * from Emp;

select * from Emp where comm is null;

select * from Emp where comm is not null;

