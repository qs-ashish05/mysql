use Ashish;

CREATE TABLE student(
	student_id int PRIMARY KEY,
    student_name VARCHAR(20) NOT NULL,
    student_major VARCHAR(20) DEFAULT 'undecided'
);

INSERT INTO student VALUES (1,'Jack');   -- this will give an error

INSERT INTO student (student_id,student_name) VALUES (7,'Oggy');

INSERT INTO student VALUES (2,'kete','Sociology');

INSERT INTO student VALUES (3,null,'claire');

INSERT INTO student VALUES (4,'Jack','Biology');

INSERT INTO student VALUES (5,'Mike','Computer Science');

DESC student;

SELECT * FROM student;
TRUNCATE TABLE student;

DROP TABLE student;