/* Alter a table: add, delete, or modify its columns. */

/* Add a column */
ALTER TABLE foo
ADD email varchar(255);

ALTER TABLE bar
ADD email varchar(255);

ALTER TABLE baz
ADD email varchar(255);

ALTER TABLE foobar
ADD email varchar(255);

ALTER TABLE foobaz
ADD email varchar(255);

/* Again */
ALTER TABLE foo
ADD phone varchar(11);

ALTER TABLE bar
ADD phone varchar(11);

ALTER TABLE baz
ADD phone varchar(11);

ALTER TABLE foobar
ADD phone varchar(11);

ALTER TABLE foobaz
ADD phone varchar(11);

/* Drop a column */
ALTER TABLE foo
DROP COLUMN email;

ALTER TABLE bar
DROP COLUMN email;

ALTER TABLE baz
DROP COLUMN email;

ALTER TABLE foobar
DROP COLUMN email;

ALTER TABLE foobaz
DROP COLUMN email;

/* Again */
ALTER TABLE foo
DROP COLUMN phone;

ALTER TABLE bar
DROP COLUMN phone;

ALTER TABLE baz
DROP COLUMN phone;

ALTER TABLE foobar
DROP COLUMN phone;

ALTER TABLE foobaz
DROP COLUMN phone;

/* Modify a column */
-- It is possible to change column's data type
-- Let's first add a column to all tables
ALTER TABLE foo
ADD email varchar(255);
ALTER TABLE bar
ADD email varchar(255);
ALTER TABLE baz
ADD email varchar(255);
ALTER TABLE foobar
ADD email varchar(255);
ALTER TABLE foobaz
ADD email varchar(255);

-- Now, let's do it
ALTER TABLE foo
MODIFY COLUMN email varchar(100);

ALTER TABLE bar
MODIFY COLUMN email varchar(100);

ALTER TABLE baz
MODIFY COLUMN email varchar(100);

ALTER TABLE foobar
MODIFY COLUMN email varchar(100);

ALTER TABLE foobaz
MODIFY COLUMN email varchar(100);

-- Again
ALTER TABLE foo
MODIFY COLUMN email varchar(255);

ALTER TABLE bar
MODIFY COLUMN email varchar(255);

ALTER TABLE baz
MODIFY COLUMN email varchar(255);

ALTER TABLE foobar
MODIFY COLUMN email varchar(255);

ALTER TABLE foobaz
MODIFY COLUMN email varchar(255);
