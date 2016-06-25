/*
	Script to create and grant access to a new user for the web tier to connect by
	Also Create a test database and simple table values
*/

CREATE USER 'php_user'@'web.andrewjackson.io' IDENTIFIED BY 'mru9pnYFIQ7=iXj';
GRANT ALL PRIVILEGES ON *.* TO 'php_user'@'web.andrewjackson.io' WITH GRANT OPTION;

CREATE DATABASE test;
USE test;
CREATE TABLE names(id int(6) NOT NULL auto_increment,first varchar(15) NOT NULL,last varchar(15) NOT NULL,PRIMARY KEY (id),UNIQUE id (id));
INSERT INTO names (first, last) VALUES ('Andrew', 'Jackson');
INSERT INTO names (first, last) VALUES ('Lorem', 'Ipsum');