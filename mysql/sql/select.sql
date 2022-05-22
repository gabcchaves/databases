-- Select all records of all columns
SELECT * FROM Customers;

-- Select all records of certain columns only
SELECT CustomerName, City, Country
FROM Customers;

SELECT CustomerName, Country
FROM Customers;

SELECT CustomerName
FROM Customers;

-- Select only distinct records
SELECT DISTINCT CustomerName, City, Country
FROM Customers;

SELECT DISTINCT CustomerName
FROM Customers;

SELECT DISTINCT City
FROM Customers;
