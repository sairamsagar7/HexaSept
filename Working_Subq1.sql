select * from Policy;

select max(annualpremium) from Policy;

-- Display the policyId of max. annualPremium 

select policyId from Policy where annualPremium = (select max(annualPremium)
from policy);

-- Display the 2nd Max. AnnualPremium

select Max(annualPremium) from Policy where 
AnnualPremium < (select max(annualPremium) from Policy);

-- Display the 2nd Min. AnnualPremium 

