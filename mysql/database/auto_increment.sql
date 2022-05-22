/* Auto increment means to increment a number every time a field is inserted. It
 * is usually used on primary keys. */

CREATE TABLE Person(
	ID INT NOT NULL AUTO_INCREMENT,
	FirstName VARCHAR(255) NOT NULL,
	LastName VARCHAR(255),
	Age INT,
	PRIMARY KEY (ID)
);

CREATE TABLE Student(
	ID INT NOT NULL AUTO_INCREMENT,
	FirstName VARCHAR(255) NOT NULL,
	LastName VARCHAR(255),
	Age INT,
	PRIMARY KEY (ID)
);

DROP TABLE Person;
DROP TABLE Student;
