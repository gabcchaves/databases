/* Working with dates must only include time components when necessary. */

CREATE TABLE IF NOT EXISTS Orders(
	OrderID INT NOT NULL AUTO_INCREMENT,
	ProductName VARCHAR(255) NOT NULL,
	OrderDate DATE NOT NULL,
	PRIMARY KEY (OrderID)
);

ALTER TABLE Orders AUTO_INCREMENT = 1;

INSERT INTO Orders(ProductName, OrderDate) VALUES ('Geitost', '2008-11-11');
INSERT INTO Orders(ProductName, OrderDate) VALUES ('Mozzarella di Giovanni', '2008-11-11');

SELECT * FROM Orders WHERE OrderDate='2008-11-11';

DROP TABLE Orders;

CREATE TABLE Commits(
	CommitID INT NOT NULL AUTO_INCREMENT,
	Description VARCHAR(255) NOT NULL,
	Time TIMESTAMP NOT NULL,
	PRIMARY KEY (CommitID)
);

ALTER TABLE Commits AUTO_INCREMENT = 1;

INSERT INTO Commits(Description, Time) VALUES ('First commit.', '2022-05-22 15:55:20');

SELECT * FROM Commits WHERE CommitID=1;

DROP TABLE Commits;
