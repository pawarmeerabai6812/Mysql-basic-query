create database Colleage;
use colleage;
create table student(
id int primary key,
name VARCHAR(50),
age int Not Null
);
insert into student values(1,"Mira",23); 
insert into student values(2,"Mina",24); 
insert into student(id,name,age) values(3,"Sara",25);
select * from student;
create table temp_1(
id int unique
);
insert into temp_1 values (101);
insert into temp_1 values (101);
select * from temp_1;
create table student2(
rollno INT PRIMARY KEY,
name varchar(50),
mark int NOT NULL,
grade varchar(1),
city varchar(20)
);
insert into student2 values(101,"Anil",78,"c","Pune");
insert into student2 values(102,"bhumika",93,"A","Mumbai");
insert into student2 values(103,"chetan",85,"B","Mumbai");
insert into student2 values(104,"Dhruv",96,"A","Delhi");
insert into student2 values(105,"emanuael",12,"F","Delhi");
insert into student2 values(106,"Farah",82,"B","Delhi");
select mark,name from student2;
select * from student2;
select distinct city from student2;
select mark from student2 where Mark>80;
select * from student2 where mark>80;
select * from student2 where city="Mumbai";
select * from student2 where mark=93;
select * from student2 where mark between 80 AND 90;
select * from student2 where city IN("Delhi","Mumbai");
select * from student2 where city  NOT IN("Delhi","Mumbai");
select * from student2 where mark >75  LIMIT 3;
select * from student2 order by mark desc
limit 3;
select max(mark) from student2 ;
select count(rollno) from student2;
select city, count(rollno) from student2 group by city;

select grade, count(rollno) from student2 
group by grade
order by grade
;
select city from student2 
group by city
having max(mark)>90;

select city from student2 where grade="A"
group by city
having max(mark)>=93
order by city ASC;

update student2
set grade="0"
where grade="A";
select * from student2;

update student2
set mark=12
where rollno=105;
delete from student2 where mark <33;
select * from student2;

create table dept(
id int primary key,
name VARCHAR(50)
);
insert into dept values(101,"English");
insert into dept values(102,"IT");
select * from dept;

create table teacher(
id int primary key,
name VARCHAR(50),
dept_id int,
foreign key (dept_id) references dept(id)
on update cascade
on delete cascade
);


insert into teacher values(101,"adam", 101);
insert into teacher values(102,"Cdam", 102);
select * from teacher;
 update dept
 SET id=103
 where id=102;

Alter table  student2
add column age int;

Alter table  student2
drop column age;









