/* Where clause */
SELECT CustomerName
FROM Customers
WHERE CustomerID = 2;

SELECT CustomerName
FROM Customers
WHERE CustomerID >= 3;

SELECT CustomerName
FROM Customers
WHERE CustomerID <= 5;

SELECT CustomerName
FROM Customers
WHERE CustomerID > 2;

SELECT CustomerName
FROM Customers
WHERE CustomerID < 3;

SELECT CustomerName
FROM Customers
WHERE CustomerName = 'Test';

SELECT CustomerName
FROM Customers
WHERE CustomerID <> 1;

SELECT CustomerName
FROM Customers
WHERE CustomerID BETWEEN 10 AND 20;

SELECT CustomerName
FROM Customers
WHERE CustomerID BETWEEN 0 AND 10;

SELECT CustomerName
FROM Customers
WHERE City LIKE 'S%';

SELECT CustomerName
FROM Customers
WHERE CustomerID IN (1, 2, 3);
