SELECT * From Agent;

SELECT * FROM Policy;

SELECT * FROM AgentPolicy;

SELECT A.AgentId, FirstName, LastName,City,State, Gender,
P.PolicyId,AppDate,AnnualPremium,ModalPremium,PaymentModeId
FROM Agent A 
INNER JOIN AgentPolicy AP ON 
A.AgentID=AP.AgentID 
INNER JOIN Policy P ON 
P.PolicyID=AP.PolicyID;

-- LEFT JOIN

SELECT A.AgentId, FirstName, LastName,City,State, Gender,
P.PolicyId, AppDate, AnnualPremium, ModalPremium, PaymentModeId
FROM Agent A 
LEFT JOIN AgentPolicy AP ON 
A.AgentID=AP.AgentID 
LEFT JOIN Policy P ON 
P.PolicyID=AP.PolicyID;

-- RIGHT Join 

SELECT A.AgentId, FirstName, LastName,City,State, Gender,
P.PolicyId, AppDate, AnnualPremium, ModalPremium, PaymentModeId
FROM Agent A 
RIGHT JOIN AgentPolicy AP ON 
A.AgentID=AP.AgentID 
RIGHT JOIN Policy P ON 
P.PolicyID=AP.PolicyID;

-- Cartician join (cross join)

SELECT * from Dept CROSS JOIN Emp;

SELECT * FROM Agent CROSS JOIN AgentPolicy;

SELECT * FROM Policy CROSS JOIN AgentPolicy;

-- SELF JOIN  : IF a table joins with itself, then it is known as SELF JOIN 

select * from Emp;

select Empno, Ename,Mgr from Emp;

SELECT E1.Empno, E1.EName, E2.Empno, E2.EName
FROM EMP E1 INNER JOIN EMP E2 
ON E1.Empno=E2.Mgr
Order By E1.Ename
