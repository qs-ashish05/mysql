use Ashish;

CREATE TABLE Employee(
	emp_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    birth_date DATE,
    sex VARCHAR(1),
-- CHECK (sex ('M','F')),
    salary INT,
    super_id INT,
    branch_id INT
);

CREATE TABLE Branch(
	branch_id int PRIMARY KEY,
    branch_name VARCHAR(30),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY (mgr_id) REFERENCES Employee(emp_id) ON DELETE SET NULL
);

ALTER TABLE Employee ADD FOREIGN KEY (branch_id) REFERENCES Branch(branch_id) ON DELETE SET NULL;

ALTER TABLE Employee ADD FOREIGN KEY (super_id) REFERENCES Employee(emp_id) ON DELETE SET NULL;

CREATE TABLE Client1(
	client_id INT PRIMARY KEY,
    client_name VARCHAR(30),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id) ON DELETE SET NULL
);

CREATE TABLE Works_with(
	emp_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY (emp_id,client_id),
    FOREIGN KEY (emp_id) REFERENCES Employee(emp_id) ON DELETE CASCADE,
    FOREIGN KEY (client_id) REFERENCES Client1(client_id) ON DELETE CASCADE
);


CREATE TABLE Branch_supplier (
  branch_id INT,
  supplier_name VARCHAR(40),
  supply_type VARCHAR(40),
  PRIMARY KEY(branch_id, supplier_name),
  FOREIGN KEY(branch_id) REFERENCES Branch(branch_id) ON DELETE CASCADE
);


SELECT * FROM Employee;
SELECT * FROM Branch;
SELECT * FROM Client1;
SELECT * FROM Works_with;
SELECT * FROM Branch_supplier;

-- Corporate
INSERT INTO employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);

INSERT INTO branch VALUES(1, 'Corporate', 100, '2006-02-09');

UPDATE employee
SET branch_id = 1
WHERE emp_id = 100;

INSERT INTO employee VALUES(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);

-- Scranton
INSERT INTO employee VALUES(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000, 100, NULL);

INSERT INTO branch VALUES(2, 'Scranton', 102, '1992-04-06');

UPDATE employee
SET branch_id = 2
WHERE emp_id = 102;

INSERT INTO employee VALUES(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
INSERT INTO employee VALUES(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2);
INSERT INTO employee VALUES(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2);

-- Stamford
INSERT INTO employee VALUES(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL);

INSERT INTO branch VALUES(3, 'Stamford', 106, '1998-02-13');

UPDATE employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO employee VALUES(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3);
INSERT INTO employee VALUES(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);

-- BRANCH SUPPLIER
INSERT INTO branch_supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO branch_supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO branch_supplier VALUES(3, 'Uni-ball', 'Writing Utensils');
INSERT INTO branch_supplier VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO branch_supplier VALUES(3, 'Stamford Lables', 'Custom Forms');

-- CLIENT
INSERT INTO client1 VALUES(400, 'Dunmore Highschool', 2);
INSERT INTO client1 VALUES(401, 'Lackawana Country', 2);
INSERT INTO client1 VALUES(402, 'FedEx', 3);
INSERT INTO client1 VALUES(403, 'John Daly Law, LLC', 3);
INSERT INTO client1 VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO client1 VALUES(405, 'Times Newspaper', 3);
INSERT INTO client1 VALUES(406, 'FedEx', 2);

-- WORKS_WITH
INSERT INTO works_with VALUES(105, 400, 55000);
INSERT INTO works_with VALUES(102, 401, 267000);
INSERT INTO works_with VALUES(108, 402, 22500);
INSERT INTO works_with VALUES(107, 403, 5000);
INSERT INTO works_with VALUES(108, 403, 12000);
INSERT INTO works_with VALUES(105, 404, 33000);
INSERT INTO works_with VALUES(107, 405, 26000);
INSERT INTO works_with VALUES(102, 406, 15000);
INSERT INTO works_with VALUES(105, 406, 130000);

drop table Employee,Branch,Client1,Works_with,Branch_supplier;


                   -- More basic Queries 

-- find empolyee ordered by salary 
SELECT * FROM Employee ORDER BY salary;

-- Find all Employee ordered by sex and then name 

SELECT * FROM Employee ORDER BY sex , First_name , Last_name;

SELECT * FROM Employee LIMIT 5;

SELECT first_name ,last_name FROM Employee;

SELECT first_name AS forename ,last_name AS surname FROM Employee;

-- Find out all the different genders 
SELECT DISTINCT sex FROM Employee;
-- DISTINCT IS THE SQL KEYWORD THAT USED TO FIND ALL THE DIFFERENT VALUES STORED IN THAT COLUMN





											-- SQL FUNCTIONS 
                                            
-- Find the number of employees
SELECT COUNT(emp_id) FROM Employee;

-- Find the number of supervisors
SELECT COUNT(super_id) FROM Employee;

-- find the number of female employees born after 1970
SELECT COUNT(emp_id) FROM Employee 
WHERE sex = 'F' AND birth_date > '1970-01-01';

-- find the avg of all employees salary
SELECT AVG(salary) FROM Employee;

-- find avg salary of all female employees
SELECT AVG(salary) FROM Employee WHERE sex = 'f';

-- find the sum of all employees salary 
SELECT SUM(salary) FROM Employee;

-- find the number of males and females
SELECT COUNT(sex),sex FROM  Employee;


SELECT COUNT(sex),sex FROM  Employee
GROUP BY sex;

-- find total sales of each salesman
SELECT SUM(total_sales), emp_id FROM  Works_with GROUP BY emp_id;

SELECT SUM(total_sales), client_id FROM  Works_with GROUP BY client_id;

				-- wildcards
                
-- % = any # characters, _ = one character

-- find the client who are an LLC

SELECT * FROM Client1 WHERE client_name LIKE '%LCC';