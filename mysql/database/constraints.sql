/* SQL contraints are used to rules for the date in the table. They limit the
 * data type that can go into the table. They can be column level or table
 * level. The column level constraints apply to the column only, and the table
 * level constraints apply to the whole table. */

/* The common constraints are: NOT NULL, UNIQUE, PRIMARY KEY, FOREIGN KEY,
 * CHECK, DEFAULT and CREATE INDEX. */

-- NOT NULL: ensures that the column does not have a null value
-- UNIQUE: ensures that all values are different
-- PRIMARY KEY: combines NOT NULL and UNIQUE to make a primary key column
-- FOREIGN KEY: refers to the primary key of other table
-- CHECK: ensures that all the values satify a certain condition
-- DEFAULT: set default value for a column
-- CREATE INDEX: used to speed up searches/queries

CREATE TABLE foo(
	id INT NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) UNIQUE
	CHECK (id >= 1000) -- Makes sure ids are greater than or equal to 1000
);

CREATE TABLE bar(
	id INT NOT NULL PRIMARY KEY,
	name VARCHAR(255) NOT NULL,
	email VARCHAR(255) UNIQUE
	CHECK (id >= 100)
);

CREATE TABLE baz(
	username VARCHAR(30) DEFAULT 'guest',
	realname VARCHAR(255) NOT NULL
);

CREATE TABLE foobar(
	ID INT NOT NULL,
	FirstName VARCHAR(255) NOT NULL,
	LastName VARCHAR(255),
	Age INT NOT NULL,
	CHECK (Age >= 12)
);

SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE Man(
	ID INT NOT NULL PRIMARY KEY,
	WomanID INT NOT NULL,
	FOREIGN KEY (WomanID) REFERENCES Woman(ID)
);

CREATE TABLE Woman(
	ID INT NOT NULL PRIMARY KEY,
	ManID INT NOT NULL,
	FOREIGN KEY (ManID) REFERENCES Man(ID)
);

SET FOREIGN_KEY_CHECKS = 1;

-- Recomended to create indexes only on columns that are frequently searched.
CREATE INDEX idx_firstname
ON foobar (FirstName);

CREATE INDEX idx_fullname
ON foobar (FirstName, LastName);

-- Drop index
ALTER TABLE foobar
DROP INDEX idx_firstname;

ALTER TABLE foobar
DROP INDEX idx_fullname;
