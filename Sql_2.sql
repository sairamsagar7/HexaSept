-- Instr() : Displays the first occurrence of given char. 

select INSTR('Divya','i');

select ENAME,INSTR(Ename,'S') from Emp;

SELECT INSTR('LEELA','L');

SELECT INSTR('LEELA','E');

-- LEN() : Displays the lenght of string 

select LENGTH('Manasa');

select Ename, Length(Ename) from Emp;

-- REVERSE() : Displays string in reverse order. 

SELECT Ename, REVERSE(ENAME) FROM Emp;

-- LEFT() --> Displays no.of left-side chars. 

select ENAME, LEFT(ENAME,4) From EMp;

-- RIGHT() -> Displays no.of right-side chars. 

SELECT ENAME,RIGHT(Ename,4) FROM Emp;

select Ename, Lower(Ename), Upper(Ename) from Emp;

-- Substring() : Displays the part of string 

SELECT SUBSTRING('welcome to sql',3,5);

-- Replace() : Used to replace old string with new string 

SELECT Replace('Java Training','Java','Sql');


