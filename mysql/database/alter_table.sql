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
