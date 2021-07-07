DROP DATABASE IF EXISTS 20WH5A1207;
CREATE SCHEMA 20WH5A1207;
USE 20WH5A1207;
CREATE TABLE passenger(pid INT, name VARCHAR(50) ,age INT,gender CHAR,address VARCHAR(20));
INSERT INTO passenger VALUES(5423, 'Meghana', 19, 'F', 'Karimnagar');
INSERT INTO passenger VALUES(5826, 'Madhuri', 20, 'F', 'Kalvakurthy');
INSERT INTO passenger VALUES(5967, 'Srilatha', 20, 'F', 'Nizamabad');
INSERT INTO passenger VALUES(5985, 'Krishnaveni', 19, 'F', 'Hyderabad');
SELECT * FROM passenger;

CREATE TABLE bus(bus_no VARCHAR(20), route VARCHAR(20), bcolor VARCHAR(20));
INSERT INTO bus VALUES('TS657', 'Karimnagar', 'blue');
INSERT INTO bus VALUES('TS987', 'Kalvakurthy', 'pink');
INSERT INTO bus VALUES('TS324', 'Nizamabad', 'pink');
INSERT INTO bus VALUES('TS489', 'Hyderabad', 'blue');
SELECT * FROM bus;

CREATE TABLE ticket(ticket_num int, from_place VARCHAR(20), destiny VARCHAR(20),bid int);
INSERT INTO ticket VALUES(1,'hyd','karimnagar',1);
INSERT INTO ticket VALUES(2,'hyd','Nizamabad',3);
INSERT INTO ticket VALUES(3,'hyd','vijayawada',2);
select * FROM ticket;

DELETE FROM ticket T WHERE T.from_place='medchal'; 
UPDATE ticket T SET T.ticket_num= ticket_num+1 WHERE T.ticket_num=1;
ALTER TABLE ticket ADD COLUMN pid INT;
SELECT * FROM ticket;

SELECT DISTINCT p.name FROM passenger p;

SELECT p.name FROM passenger p WHERE p.gender = "F" ;

SELECT t.ticket_num, p.name FROM passenger p, ticket t WHERE t.pid = p.pid ;

SELECT t.ticket_num, p.name FROM ticket t, passenger p WHERE p.name LIKE "M % a" AND t.pid=p.pid ;

SELECT p.name,p.age FROM passenger p WHERE 15<=p.age AND p.age<=25;

SELECT p.name FROM  passenger p WHERE p.name like "K%";

SELECT p.name FROM passenger p ORDER BY p.name ASC;
