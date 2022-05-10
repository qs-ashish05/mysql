use Ashish;

CREATE TABLE student(
	student_id int AUTO_INCREMENT,
    student_name VARCHAR(20) NOT NULL,
    student_major VARCHAR(20),
    PRIMARY KEY(student_id)
);

INSERT INTO student(student_name , student_major) VALUES ('Jack','Biology');

INSERT INTO student(student_name , student_major) VALUES ('oggy','physics');

INSERT INTO student VALUES (2,'kete','Sociology');

INSERT INTO student VALUES (3,null,'claire');

INSERT INTO student VALUES (4,'Jack','Biology');

INSERT INTO student VALUES (5,'Mike','Computer Science');

TRUNCATE TABLE student;

DROP TABLE student;

SELECT * FROM student;