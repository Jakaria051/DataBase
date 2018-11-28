select version(),user(),now();
SELECT CURRENT_DATE;
SELECT SIN(PI()/4), (4+1)*5;
create database graminbank;
show databases;
use graminbank;
CREATE TABLE authors (id INT, name VARCHAR(20), email VARCHAR(20));
SHOW TABLES;
describe authors;
INSERT INTO authors (id,name,email) VALUES(1,"Vivek","xuz@abc.com");
INSERT INTO authors (id,name,email) VALUES(2,"Priya","p@gmail.com");
INSERT INTO authors (id,name,email) VALUES(3,"Tom","tom@yahoo.com");
SELECT * FROM authors;


/*drop table authors;
show tables;
*/






--source D:/dbms/dbb_bank.sql
 