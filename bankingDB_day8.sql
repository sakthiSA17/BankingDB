-- joins
--  displays every bank account along with its corresponding transaction details.
SELECT 
    a.AccountID,
    a.AccountType,
    a.Balance,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionType,
    t.Amount
FROM
    Accounts a
        INNER JOIN
    Transactions t ON a.AccountID = t.AccountID;
    
    -- identify all bank accounts, including those that have not yet performed any transactions.
    
     SELECT
    a.AccountID, a.AccountType, a.Balance,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionType,
    t.Amount
FROM Accounts a
LEFT JOIN Transactions t
ON a.AccountID = t.AccountID;

-- combine the Accounts and Transactions tables using an INNER JOIN and then filter only the deposit transactions

SELECT
    a.AccountID, a.AccountType, a.Balance,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionType,
    t.Amount
FROM Accounts a
INNER JOIN Transactions t
ON a.AccountID = t.AccountID
WHERE t.TransactionType = 'Deposit';

-- identify customers who maintain high account balances and analyze their transaction activities.

SELECT
    a.AccountID, a.AccountType, a.Balance,
    t.TransactionID,
    t.TransactionDate,
    t.TransactionType,
    t.Amount
FROM Accounts a
INNER JOIN Transactions t
ON a.AccountID = t.AccountID
WHERE a.Balance > 30000
ORDER BY a.Balance DESC;

