DROP DATABASE IF EXISTS 20WH1A1212;
CREATE SCHEMA 20WH1A1212;
USE 20WH1A1212;
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
INSERT INTO ticket VALUES(1,'hyd','khammam',1);
INSERT INTO ticket VALUES(2,'hyd','Nizamabad',3);
INSERT INTO ticket VALUES(3,'Warangal','vijayawada',2);
select * FROM ticket;

DELETE FROM ticket T WHERE T.from_place='Warangal'; 
UPDATE ticket T SET T.ticket_num= ticket_num+1 WHERE T.ticket_num=1;
ALTER TABLE ticket ADD COLUMN pid INT;
SELECT * FROM ticket;
