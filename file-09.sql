use Ashish;

CREATE TABLE students(
	st_id int primary key,
	st_name varchar(100),
	st_ph_no varchar(100),
	branch varchar(5)
);

CREATE TABLE marks(
mr_id int, 
mark int, 
foreign key(mr_id) references students(st_id)
);

insert into students values(11,'AAA','111...','comps');
insert into students values(12,'BBB','222...','it');
insert into students values(13,'CCC','333...','comps');
insert into students values(14,'DDD','444...','it');
insert into marks values(11,80);
insert into marks values(12,50);
insert into marks values(13,70);
insert into marks values(14,90);

desc table students;
desc table marks;

select * from students;
select * from marks;

select min(mark) from marks;

select max(mark) from marks;

select avg(mark) from marks;

select count(mark) from marks;

select count(st_id) from students where st_id > 102;

select *from marks order by mark;

select branch from students group by branch;

drop table students;
drop table marks;
