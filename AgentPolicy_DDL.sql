use sqlprac;

drop table if exists  Agent;

Create Table Agent
(
	AgentID INT AUTO_INCREMENT ,
	FirstName varchar(30), 
    MI varchar(1),
    LastName varchar(30),
    FullName varchar(80),
    Gender varchar(10),
    Dob TIMESTAMP,
    SSN varchar(30),
    MaritalStatus INT,
    Address1 varchar(30),
    Address2 varchar(30),
    City varchar(30),
    State varchar(30),
    ZipCode varchar(30),
    Country varchar(30),
    Primary Key(AgentID)
  );
  
  alter table Agent auto_increment=1000;
  
DROP TABLE IF EXISTS POLICY;

Create Table Policy
(
  PolicyID int AUTO_INCREMENT ,
  AppNumber varchar(30),
  AppDate date,
  PolicyNumber varchar(30),
  AnnualPremium numeric(9,2),
  PaymentModeID int CHECK(PaymentModeID IN(1,2,3)),
  ModalPremium numeric(9,2),
  constraint pk_policy_policyID primary key(PolicyID)
);

Drop table IF EXISTS AgentPolicy;

create table AgentPolicy
(
   AgentID INT REFERENCES Agent(AgentID),
   PolicyID INT REFERENCES Policy(PolicyID),
   IsSplitAgent INT,
   constraint pk_agp primary Key(AgentID,PolicyID)
);
