use sqlprac;

drop table if exists dept;
create table Dept 
(
  deptno int,
  dname  varchar(14),
  loc    varchar(13),
  constraint pk_dept primary key(deptno)
);

drop table if exists emp;

create table emp(
  empno    int,
  ename    varchar(10),
  job      varchar(9),
  mgr      int,
  hiredate date,
  sal      int,
  comm     int,
  deptno   int,
  constraint pk_emp_empno primary key (empno),
  constraint fk_EMP_deptno foreign key(deptno) references dept(deptno)
);
