use Ashish;

CREATE TABLE student(
	student_id int AUTO_INCREMENT,
    student_name VARCHAR(20) NOT NULL,
    student_major VARCHAR(20),
    PRIMARY KEY(student_id)
);


INSERT INTO student VALUES (1,'Jack','Biology');

INSERT INTO student VALUES (2,'kete','Sociology');

INSERT INTO student VALUES (3,'champ','claire');

INSERT INTO student VALUES (4,'Jack','Biology');

INSERT INTO student VALUES (5,'Mike','Computer Science');

-- update statement 
UPDATE student SET student_major = 'Bio' WHERE student_major = 'Biology';

SELECT * FROM student;

UPDATE student SET student_major = 'Bio',student_name = 'bob' WHERE student_major = 'Biology';


-- delete 

DELETE FROM student
where student_id = 3;

DELETE FROM student
where student_id = 3 AND student_major = 'Biology';

DELETE FROM student;         -- delete everything from the table 