use Ashish;

-- creating table employee
CREATE TABLE employee(
	emp_id INT NOT NULL,
	irst_name VARCHAR(20),
	last_name VARCHAR(100),
	emp_salary int,
	dep_id int,
	PRIMARY KEY (emp_id)
);

-- creating Table depart
CREATE TABLE department(
	dep_id int,
	dep_name VARCHAR(20),
	manager_id int,
	location_id int,
	PRIMARY KEY (dep_id)
);

-- insering values in table employee
insert into employee values (100,'erik','john',20000,12);
insert into employee values (101,'steven','cohen',10000,10);
insert into employee values (102,'edwin','thomas',15000,11);
insert into employee values (103,'harry','potter',20000,12);


-- insering values in table department
insert into department values (10,"IT",200,1700);
insert into department values (11,"Marketing",201,1800);
insert into department values (13,"Resource",203,2400);
insert into department values (14,"Shipping",121,1500);

-- Iner join
select e.emp_id,e.first_name,e.last_name,d.dep_id,d.dep_name
from employee e
inner join department d
on e.dep_id = d.dep_id;

-- Left join
select e.emp_id,e.first_name,e.last_name,d.dep_id,d.dep_name
from employee e
left outer join department d
on e.dep_id = d.dep_id;

-- Right join
select e.emp_id,e.first_name,e.last_name,d.dep_id,d.dep_name
from employee e
right join department d
on e.dep_id = d.dep_id;

-- full outer join
select e.emp_id,e.first_name,e.last_name,d.dep_id,d.dep_name
from employee e
left join department d
on e.dep_id = d.dep_id
union
select e.emp_id,e.first_name,e.last_name,d.dep_id,d.dep_name
from employee e
right join department d
on e.dep_id=d.dep_id;

-- Sql Subqueries
-- Single row Sub-queries
select * from employee
where emp_salary = ( select avg(emp_salary) from employee);
select * from employee
where emp_salary > ( select avg(emp_salary) from employee);
select * from employee
where emp_salary < ( select avg(emp_salary) from employee);
select * from employee;
-- multi row sub-queries
select * from employee
where emp_salary in ( select max(emp_salary) from employee
group by dep_id );
select * from employee
where emp_salary not in ( select max(emp_salary) from employee
group by dep_id );

