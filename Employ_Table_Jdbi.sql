drop database if exists hexasept;
create database hexasept;
use hexasept;

drop table if exists Employ;

Create Table Employ
(
    Empno int AUTO_INCREMENT,
    Name varchar(50), 
    Dept varchar(30),
    Desig varchar(30),
    Basic INT,
    primary key(Empno)
)
;


Insert into Employ(Name,Dept,Desig,Basic) values
('kiran kumar kailasam','java','developer',42233),
('Vishnu Vardhan Reddy','dotnet','programmer',42133),
('Ram Kishan','java','developer',82233),
('Kareem','dotnet','programmer',52234),
('Sheik Sulthan Mohammad','dotnet','developer',42555),
('suhaas','java','programmer',65523),
('karthik','aws','deployment',67444);

select * from Employ;
