select * from policy;

select policyId from Policy where AnnualPremium between 100000 AND 200000;

-- Display Ename from Emp whose

select Empno, Ename, Job, Sal from Emp;

select Job, Max(sal) from Emp
Group by job
Having Max(sal) > 2000;

-- From the above query please print Empno, Ename who belongs to the above job 

select Empno, Ename, JOB FROM EMP WHERE JOB = (select Job from Emp
Group by job
Having Max(sal) > 2000);

-- Display the Idle Agents 

-- which is there in Agent Table, but not there in AgentPolicy Table 

SELECT * FROM Agent WHERE 
AgentID <> (select AgentId from AgentPolicy);

SELECT * FROM Agent WHERE 
AgentID <>ALL (select AgentId from AgentPolicy);

-- Display Idle Policies 

SELECT * from Policy WHERE 
PolicyID <> ALL(Select PolicyID from AgentPolicy);

-- Display Matching Agents of Agent and AgentPolicy tables 

select * from Agent where 
AgentId = ANY(select Distinct AgentID from AgentPolicy);

-- Display Matching Policies of Policy and AgentPolicy tables 

select * from Policy WHERE 
PolicyID = ANY(select PolicyID from AgentPolicy);
