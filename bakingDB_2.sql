-- insert query for customers
insert into customers values (101,'Ruhul','sharma','rahul@gmail.com','9876543210','2017-04-15','1997-06-17');

select * from customers;
select * from accounts;

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(201,101,'Savings',25000);


UPDATE Customers
SET Phone='9999999999'
WHERE CustomerID=101;

SELECT * FROM Customers
WHERE CustomerID = 101;

UPDATE Customers
SET Email='rahul.sharma@gmail.com'
WHERE CustomerID=101;

SELECT * FROM Customers
WHERE CustomerID = 101;

insert into customers values (102,'premanth','singh',"premnathsingh@gmail.com","9940108082","2010-05-08","1983-08-31"),(103,'siva','raja',"sivaraga@gmail.com","9687453214","2013-09-07","1992-08-23"),
(104,"sakthi","singh","sakthiakshi@gmail.com","9150441450","2023-06-23","2006-06-17"),(105,"Akshita","sakthi","akshisakthi@gmail.com","9345775210","2024-08-16","2006-09-19");

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(202,102,'Savings',55000);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(203,103,'current',75000);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(204,104,'Savings',155000);

INSERT INTO Accounts
(AccountID, CustomerID, AccountType, Balance)
VALUES
(205,105,'Savings',125000);


