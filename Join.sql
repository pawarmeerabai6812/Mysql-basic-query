use colleage;
create table student3(
id int primary key,
name varchar (50)
);
insert into student3 values(101,"Adam");
insert into student3 values(102,"Bob");
insert into student3 values(103,"Casessy");
create table course(
id int primary key,
course varchar(50)

);
insert into course values(101,"English");
insert into course values(105,"Math");
insert into course values(103,"Science");
insert into course values(107,"Computer Science");
select * from student3;
select * from course;
select * from student3 inner join course
on student3.id=course.id;
select * from student3  as s
left join course as c
on s.id=c.id;
select * from student3  as s
 right join course as c
on s.id=c.id;


