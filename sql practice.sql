create database college;
use college;
create table student(rollno int primary key,name varchar(50) ,marks int not null,grade varchar(1),city varchar(20));
insert into student(
) values (101,"anil",78,"c","pune") , (102,"bhumika",93,"a","mumbai"),(103,"chetan",85,"b","mumbai"),(104,"dhruv",96,"a","delhi"),(105,"emanual",12,"f","delhi"),
(106,"farah",82,"8","delhi");
select  city, marks from student;
select distinct(city) from student;
select * from student where marks>80;
select * from student where city="mumbai";
select * from student where marks between 80 and 90;
select * from student where  marks in (80,93);
select * from student where  marks not in (80,93);
select * from student limit 3;
select * from student where marks+10>=90 order by marks desc limit 3;
select * from student order by marks desc limit 3,1;
select count(name) from student;
select * from student where marks in (80,90,100) and city="pune" order by marks desc limit 2;
select city ,count(name)from student group by city;
insert into student () values (108,"anil",102,"n","pune");
insert into student () values (109,"sam",102,"n","pune");
select city ,avg(marks) from student group by city order by avg(marks);
select grade,count(rollno) from student group by grade order by count(rollno);
select city, count(rollno) from student group by city having max(marks)>90 order by count(rollno) desc;
set sql_safe_updates=0;
update student set grade="b" where marks>80;
select mark+100 from student;
select marks/100 from studnet;
select marks,city,count(city) from student group by marks ,city order by marks desc;
update student set marks=marks+1;
select*from student;
select distinct (marks) from student;
select count(distinct city) from student;
delete from student where marks<33;
create table dept (id int primary key, name varchar(50));
create table teacher (id int primary key, name varchar(50),dept_id int,foreign key (dept_id) references dept (id));
alter table student change marks  stu_mark varchar(50);
delete from student where stu_mark<80;
alter table student drop column stu_mark;
# inner join
select * from studnet 
inner join course 
on student.id = course.id;
#left join
select * from student
left join course
on student.age = course.id;
#right join
select * from student
right join course
on student.age = course.id;
#full join
select * from student
inner join course
on student.id = course.id
union
select * from student 
right join course
on student.age = course.id;
select * from student
right join course
on student.id = course.id;
# left exclusive join
select * from student
left join course
on student.id = course .id
where course.id is null;
# right exclusive join
 select * from student
 right join course
 on student.id = course.id
 where student.id is null;
 #self join
 create database selfjoin;
 use selfjoin;
 create table employee(id int primary key,name varchar(50),manager_id int);
 insert into employee(id,name,manager_id)
 values(101,"adam",103),
 (102,"bob",104),
 (103,"casey",null),
 (104,"donald",103);
 select * from employee;
 select * from employee as a
 join employee as b
 on a.id = b.manager_id;
  select a.name as manage_name ,b.name from employee as a
 join employee as b
 on a.id = b.manager_id;
 #union  for remove of duplicartes;
 select name from employee
 union
 select name from employee;
 # union all allow all even duplicates are allowed;
  select name from employee
 union all
 select name from employee;
 /* subqueries can write in select from and where clause*/
 create table student(rollno int primary key,name varchar(50) ,marks int not null,grade varchar(1),city varchar(20));
insert into student(
) values (101,"anil",78,"c","pune") , (102,"bhumika",93,"a","mumbai"),(103,"chetan",85,"b","mumbai"),(104,"dhruv",96,"a","delhi"),(105,"emanual",12,"f","delhi"),
(106,"farah",82,"8","delhi");
 select avg(marks) from student;
 select name,marks  from student where marks>74; 
 select name , marks from student where marks  > (select avg(marks) from student) order by name desc;
 select name ,rollno from student where rollno In (select rollno from student where rollno % 2=0);
 select * from student where city =  "delhi";
 select max(marks) from (select * from student where city =  "delhi") as temp;
 select (select max(marks) from student),name from student;
 select marks , name from student group by name,marks order by marks desc limit 2,1;
 select marks+10 from student;
 update student set grade = "b" where marks > 80;
 select * from student where marks in (96,85,12);
 select * from student where city like '_u%';
 use selfjoin;
 select count(marks), name from student group by name having  max(marks)>75 order by name;
 select * from student where marks is null;
 select * from student where marks is not null;
 Select product_name, product_price,
CASE
          WHEN product_price>18000 THEN ‘greater than 18000’

              WHEN product_price<18000 THEN ‘less than 18000’

              ELSE ‘equal to 18000’
END AS RESULT
FROM products;
select * from student where name = "anil";