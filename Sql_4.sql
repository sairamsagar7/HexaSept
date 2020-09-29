-- Date Functions 

select curdate();

select curtime();

-- last_day() : Last day of the date specified month 

select last_day(curdate()) ;

select dayofmonth(curdate());

select dayofweek(curdate());

select quarter(curdate());

select datediff('2020-12-31',curdate());

select adddate(curdate(),INTERVAL 1 DAY);

select adddate(curdate(),INTERVAL 1 MONTH);

select adddate(curdate(),INTERVAL 1 YEAR);

