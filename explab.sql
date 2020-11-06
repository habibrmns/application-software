create table student(sno int,name varchar(20),marks int,dept char(25));


alter table student add column age int;


alter table student modify column dept char(20);


alter table student drop column marks;


alter table student rename to students;


insert into students values(27, 'habeeb','cse',20);


truncate students;


drop table students;