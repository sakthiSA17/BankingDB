-- Search Customers Whose First Name Starts with "A"
SELECT *
FROM Customers
WHERE FirstName LIKE 'A%';

-- Search Customers Whose Email Contains “gmail”
SELECT *
FROM Customers
WHERE Email LIKE '%gmail%';

-- Search Customers Whose Last Name Ends with “kar”
SELECT *
FROM Customers
WHERE LastName LIKE '%kar';

-- Display customers whose first name starts with R
select * from customers where firstname like 'R%';

-- Find customers whose email contains yahoo
select * from customers where email like"%yahoo.com";

-- Display customers whose last name starts with P
select * from customers where lastname like "p%";

-- Search customers whose phone number ends with 99
select * from customers where phone  % 100 = 99;


 -- Retrieve Records for Selected Account Types
SELECT *
FROM Accounts
WHERE AccountType IN ('Savings', 'Current');

-- Retrieve Transactions for Selected Transaction Types
SELECT *
FROM Transactions
WHERE TransactionType IN ('Deposit', 'Withdrawal');

-- Retrieve Records for Selected Customers
SELECT *
FROM Customers
WHERE CustomerID IN (101,102,105);

-- Display accounts belonging to Salary and Savings account types
SELECT * FROM Accounts WHERE AccountType IN ('Salary', 'Savings');

-- Retrieve transactions for Payment and Deposit categories
SELECT * FROM transactions where TRANSACTIONTYPE IN ("PAYMENT","DEPOSITS");

-- Display customer records for CustomerID 103 and 104
SELECT * FROM CUSTOMERS WHERE CUSTOMERID IN (103,104);

-- Retrieve selected account records using AccountID values
SELECT * FROM CUSTOMERS WHERE CUSTOMERID IN (102,103,105);

SELECT * FROM CUSTOMERS WHERE CUSTOMERID NOT IN(102,103,105);

-- Display Customers in Ascending Order of Last Name
SELECT *
FROM Customers
ORDER BY LastName ASC;

-- Display Accounts with Highest Balance First
SELECT *
FROM Accounts
ORDER BY Balance DESC;

-- Display Transactions Sorted by Transaction Date
SELECT *
FROM Transactions
ORDER BY TransactionDate DESC;

-- Display customers sorted by FirstName
SELECT * FROM CUSTOMERS ORDER BY FIRSTNAME DESC;

-- Display accounts sorted by AccountType
SELECT * FROM ACCOUNTS ORDER BY ACCOUNTTYPE DESC;

-- Display transactions sorted by Amount in descending order
SELECT * FROM TRANSACTIONS ORDER BY AMOUNT DESC;

-- Display customers sorted by DateOfBirth
SELECT * FROM CUSTOMERS ORDER BY DATEOFBIRTH DESC;

-- Display Only Top 5 Highest Balance Accounts
SELECT *
FROM Accounts
ORDER BY Balance DESC
LIMIT 5;

-- Display First 3 Customer Records
SELECT *
FROM Customers
LIMIT 3;

-- Skip Initial Transaction Records While Viewing Data
SELECT *
FROM Transactions
LIMIT 5 OFFSET 3;

--  Display top 3 transactions with highest amount
select * from transactions order by amount desc limit 3;

-- Retrieve only 4 customer records
select * FROM customers limit 4;

-- Skip first 2 account records and display next 3 records
select * from customers limit 3 offset 2;

-- Display top 5 latest transactions
select * from transactions order by transactiondate desc limit 5;

-- Display Savings Account Customers Sorted by Balance
SELECT *
FROM Accounts
WHERE AccountType = 'Savings'
ORDER BY Balance DESC;

-- Search Customers Using Partial Name and Limit Results
SELECT *
FROM Customers
WHERE FirstName LIKE 'S%'
LIMIT 5;

-- Display Selected Transactions in Sorted Order
SELECT *
FROM Transactions
WHERE TransactionType IN ('Deposit','Withdrawal')
ORDER BY TransactionDate DESC;



