use bankingdb;

-- viewing of customer table 
SELECT * FROM Customers;

-- required columns from the table
SELECT FirstName, LastName, Email, Phone
FROM Customers;

-- AccountID, AccountType, and Balance from accounts table 
select AccountID, AccountType, balance from accounts;

-- use of where condition
SELECT *
FROM Accounts
WHERE AccountType = 'Savings';

SELECT *
FROM Accounts
WHERE Balance > 25000;

SELECT *
FROM Transactions
WHERE Amount BETWEEN 5000 AND 20000;

SELECT *
FROM Customers
WHERE CustomerID IN (101,102,103);

SELECT *
FROM Customers
WHERE FirstName LIKE 'R%';

-- retrive all data from current account 
select * from accounts where AccountType = "current" ;

-- Find accounts with balance less than 15000
select * from accounts where balance < 15000;

-- Display transactions between 1000 and 10000
select * from transactions where amount between 1000 and 10000;

-- Retrieve customer records for CustomerID 104 and 105
select * from customers where customerid between 104 and 105;

-- Display customers whose last name starts with S
select * from customers where lastname like "s%";

-- Display Customers in Alphabetical Order
SELECT *
FROM Customers
ORDER BY FirstName ASC;

-- Display Accounts with Highest Balance First
SELECT *
FROM Accounts
ORDER BY Balance DESC;

-- Retrieve Unique Account Types
SELECT DISTINCT AccountType
FROM Accounts;

-- Display Top 3 Highest Balance Accounts
SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 3;

-- Skip Initial Records While Viewing Transactions
SELECT *
FROM Transactions
LIMIT 5 OFFSET 2;

-- Display customers sorted by LastName
select * from customers order by lastname asc;

-- Retrieve top 5 transactions with highest amount
select * from transactions order by amount desc limit 5;

-- Display unique transaction types
select distinct transactiontype from transactions;

-- Skip the first 3 transaction records and display the next 4 records
select* from transactions limit 4 offset 3;

-- Find Customers Without Phone Numbers
SELECT *
FROM Customers
WHERE Phone IS NULL;

-- Find Customers Having Email Addresses
SELECT *
FROM Customers
WHERE Email IS NOT NULL;

--  Find customers without email addresses
SELECT * FROM CUSTOMERS WHERE Email IS NULL;

-- Display all accounts where balance information is available
SELECT * FROM ACCOUNTS WHERE BALANCE IS NOT NULL;

-- Categorize Accounts Using Balance
SELECT transactionid,amount
       CASE
           WHEN Balance >= 12000then 'primeum account'
           WHEN Balance >= 15000 then 'standard account'
           ELSE 'Basic Account'
       END AS status
FROM Accounts;

SELECT TransactionID,Amount,
       CASE
           WHEN amount >=15000 then'high transactions'
           WHEN amount >=12000 then 'mediam transaction'
           ELSE 'low transactions'
       END AS status
FROM transactions;

SELECT AccountID,
       Balance,
       RANK() OVER (ORDER BY Balance DESC) AS BalanceRank
FROM Accounts;

SELECT TransactionID,
       Amount,
       SUM(Amount) OVER (ORDER BY TransactionDate) AS RunningTotal
FROM Transactions;

SELECT TransactionID,
       Amount,
       AVG(Amount) OVER () AS AverageTransaction
FROM Transactions;

-- Rank customers based on account balance
SELECT accountid , balance, rank () over (order by balance desc) as ranking from accounts;

--  Generate running total for account balances
select accountid , balance , sum(balance) over () as totolbalance from accounts;

-- Display maximum transaction amount using a window function
SELECT TransactionID,Amount,MAX(Amount) OVER () AS MaxTransactionAmount FROM Transactions;






