SET AUTOCOMMIT = OFF;

START TRANSACTION;

-- select * from Accounts;

DELETE FROM Accounts WHERE AccountNO=18;

ROLLBACK;

DELETE FROM Accounts WHERE AccountNO=19;

COMMIT;
