use Ashish;

DROP TABLE student;

CREATE TABLE student(
	student_id int AUTO_INCREMENT,
    student_name VARCHAR(20) NOT NULL,
    student_major VARCHAR(20),
    PRIMARY KEY(student_id)
);

INSERT INTO student VALUES (1,'Jack','Biology');
INSERT INTO student VALUES (2,'kete','Sociology');
INSERT INTO student VALUES (3,'claire','chemistry');
INSERT INTO student VALUES (4,'Jack','Biology');
INSERT INTO student VALUES (5,'Mike','Computer Science');

SELECT * FROM student;

SELECT student_id,student_name FROM student;

SELECT student.student_id,student.student_name FROM student;

SELECT * FROM student WHERE student_id = 2;

SELECT student.student_name,student.student_major FROM student ORDER BY student_name;    -- Alpabetical order by default is accending 

SELECT student.student_name,student.student_major FROM student ORDER BY student_name DESC;

SELECT * FROM student ORDER BY student_major , student_id;

SELECT * FROM student ORDER BY student_id DESC LIMIT 2;

SELECT * FROM STUDENT 
WHERE STUDENT_major = 'Biology';

SELECT student_name , student_major FROM STUDENT 
WHERE STUDENT_major = 'Biology';

SELECT student_name , student_major FROM STUDENT 
WHERE STUDENT_major = 'Biology' AND student_id = 3;

SELECT student_name , student_major FROM STUDENT 
WHERE STUDENT_major = 'Biology' OR student_id = 3;

SELECT student_name , student_major FROM STUDENT 
WHERE STUDENT_major IN ('Biology','Chemistry','Computer Science');
-- note eqal to <>



DESC student;