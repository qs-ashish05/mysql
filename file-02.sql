create database Ashish;   -- to create database

use Ashish;              -- to connect with database

-- Sql data Types;
-- int 
-- decimal (m,n)  here m is total number of digits and n is number of digits after the decimal
-- varchar(10) 
-- blob  --> binary large object (used to store large number of binary data)
-- date  --> 'YYYY-MM-DD'
-- timestamp --> 'YYYY-MM-DD HH:MM:SS'


-- craeting database tables
CREATE TABLE student (
	student_id INT PRIMARY KEY,
    student_name VARCHAR(20),
    student_major VARCHAR(20)
);

-- Above table can also be defined in the following maner 
CREATE TABLE student (
	student_id INT ,
    student_name VARCHAR(20),
    student_major VARCHAR(20),
    PRIMARY KEY(student_id)
);



DESC student;

SELECT * FROM student;

DROP TABLE student;

ALTER TABLE student ADD gcpa DECIMAL(3,2);

ALTER TABLE student DROP COLUMN gcpa;

INSERT INTO student VALUES (1,'Jack','Biology');

INSERT INTO student VALUES (2,'kete','Sociology');

INSERT INTO student(student_id,student_name) VALUES (3,'claire');

INSERT INTO student VALUES (4,'Jack','Biology');

INSERT INTO student VALUES (5,'Mike','Computer Science');
TRUNCATE TABLE student;

