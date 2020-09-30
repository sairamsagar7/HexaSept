select * from Dept;

select * from Emp;

SELECT Dept.DeptNo,Dname,
Empno,Ename,Sal,Job
FROM Dept, EMP WHERE Dept.Deptno=Emp.Deptno;

SELECT DEPT.Deptno,Dname,Empno,Ename,Sal,Job
From DEPT INNER JOIN EMP ON Dept.Deptno=Emp.Deptno;

SELECT D.Deptno,Dname,Empno,Ename,Sal,Job
From DEPT D INNER JOIN EMP E ON D.Deptno=E.Deptno;

SELECT D.Deptno,Dname,Empno,Ename,Sal,Job
From DEPT D LEFT JOIN EMP E ON D.Deptno=E.Deptno;

SELECT D.Deptno,Dname,Empno,Ename,Sal,Job
From DEPT D RIGHT JOIN EMP E ON D.Deptno=E.Deptno;
