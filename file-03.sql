use Ashish;

CREATE TABLE student(
	student_id int PRIMARY KEY,
    student_name VARCHAR(20) NOT NULL,
    student_major VARCHAR(20)  -- unique
);

INSERT INTO student VALUES (1,'Jack','Biology');

INSERT INTO student VALUES (2,'kete','Sociology');

INSERT INTO student VALUES (3,null,'claire');

INSERT INTO student VALUES (4,'Jack','Biology');

INSERT INTO student VALUES (5,'Mike','Computer Science');

TRUNCATE TABLE student;

DROP TABLE student;