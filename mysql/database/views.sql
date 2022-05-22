/* Views are virtual tables based on the result-set of SQL statements.
 * They are used to present data as if coming from a single table. */

-- The views always show up to date data. They are recreated whenever the user
-- queries it.

CREATE TABLE Customers(
	CustomerID INT NOT NULL AUTO_INCREMENT,
	CustomerName VARCHAR(255) NOT NULL,
	ContactName VARCHAR(255) NOT NULL,
	Country VARCHAR(255) NOT NULL,
	City VARCHAR(255) NOT NULL,
	PRIMARY KEY (CustomerID)
);

ALTER TABLE Customers AUTO_INCREMENT = 1;

INSERT INTO Customers(CustomerName, ContactName, Country, City)
VALUES ('João Emmanuel', 'João', 'Brazil', 'Santarém');

INSERT INTO Customers(CustomerName, ContactName, Country, City)
VALUES ('Jesse Fast', 'Jesse', 'United States of America', 'Omaha');

INSERT INTO Customers(CustomerName, ContactName, Country, City)
VALUES ('Isaac Mathman', 'Isaac', 'England', 'London');

INSERT INTO Customers(CustomerName, ContactName, Country, City)
VALUES ('Maria Luíza', 'Maria', 'Brazil', 'Santarém');

CREATE VIEW BrazilCustomers AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';

SELECT * FROM BrazilCustomers;

CREATE OR REPLACE VIEW BrazilCustomers AS
SELECT CustomerName, ContactName, City
FROM Customers
WHERE Country = 'Brazil';

SELECT * FROM BrazilCustomers;

DROP TABLE Customers;
DROP VIEW BrazilCustomers;
