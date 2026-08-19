INSERT INTO Branches (BranchID, BranchName, BranchAddress, BranchPhone)
VALUES
(301, 'Anna Nagar Branch', 'Anna Nagar, Chennai', '044-26543210'),
(302, 'T Nagar Branch', 'T Nagar, Chennai', '044-27894567'),
(303, 'Velachery Branch', 'Velachery, Chennai', '044-29874512'),
(304, 'Mylapore Branch', 'Mylapore, Chennai', '044-24567890'),
(305, 'Tambaram Branch', 'Tambaram, Chennai', '044-26789012');


INSERT INTO Transactions (TransactionID, TransactionDate, Amount, TransactionType, AccountID)
VALUES
(401, '2024-01-15', 5000, 'Deposit', 201),
(402, '2024-02-10', 2000, 'Withdrawal', 202),
(403, '2024-03-05', 15000, 'Deposit', 203),
(404, '2024-04-12', 7000, 'Withdrawal', 204),
(405, '2024-05-20', 10000, 'Deposit', 205);

INSERT INTO Loans (LoanID, LoanAmount, InterestRate, StartDate, EndDate, CustomerID)
VALUES
(501, 250000, 7.5, '2023-01-01', '2028-01-01', 101),
(502, 150000, 8.0, '2023-03-15', '2026-03-15', 102),
(503, 500000, 6.5, '2023-06-10', '2033-06-10', 103),
(504, 100000, 9.0, '2024-02-20', '2027-02-20', 104),
(505, 300000, 7.0, '2024-05-25', '2029-05-25', 105);


-- Update the balance of AccountID 201 to 30000
UPDATE Accounts
SET Balance = 30000
WHERE AccountID = 201;

-- Verify all updated records in Accounts
SELECT * FROM Accounts;

-- Verify all updated records in Customers
SELECT * FROM Customers;

-- Verify all updated records in Transactions
SELECT * FROM Transactions;

-- Verify all updated records in Branches
SELECT * FROM Branches;

-- Verify all updated records in Loans
SELECT * FROM Loans;

-- Disable safe update mode for this session
SET SQL_SAFE_UPDATES = 0;

-- Now run your delete
DELETE FROM Transactions
WHERE TransactionID = 402;

DELETE FROM Accounts
WHERE AccountID = 202;

SELECT * FROM Accounts;

