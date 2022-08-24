# Author Sankhajit Roy

# create a database and adding column
create table emp1(
ID numeric(3),
ID_Name varchar(10),
Basic numeric(6,2),
Designation varchar(10),
Age numeric(2)
);

# modify the entity
alter table emp1 modify Basic integer(6);
alter table emp1 modify ID_Name varchar(15);

# insert the entities into column
insert into emp1 values
(101,'KUNAL',6700,'Manager',24),
(201,'SUBIR',6200,'Engineer',27),
(301,'IMRAN',6300,'Engineer',25),
(401,'TAPAS',6700,'Trainee',28),
(501,'MAHESH',6230,'Trainee',26),
(601,'JEET',7000,'Trainee',25);

# add new coulmn after specific column
alter table emp1 add Skill varchar(15) after basic;
alter table emp1 add DOJ date after age;

# update the entities
update emp1 set Skill = 'java' where ID = 101;
update emp1 set Skill = 'Python' where ID = 201;
update emp1 set Skill = 'C++' where ID = 301;
update emp1 set Skill = 'SQL' where ID = 401;
update emp1 set Skill = 'java' where ID = 501;
update emp1 set Skill = 'Selenium' where ID = 601;

# update the entities
update emp1 set DOJ = '2022-02-05' where ID = 101;
update emp1 set DOJ = '2022-02-10' where ID = 201;
update emp1 set DOJ = '2022-02-15' where ID = 301;
update emp1 set DOJ = '2022-02-20' where ID = 401;
update emp1 set DOJ = '2022-02-22' where ID = 501;
update emp1 set DOJ = '2022-02-23' where ID = 601;

# update specific column
update emp1 set Skill = 'Python' where Designation = 'Trainee';

# modify specific column
alter table emp1 modify ID varchar(5);

# select both table
select * from emp1,emp_trainee;

# rename the column
alter table emp1 rename column Age to Age_in_Years;

# delete specific column
delete from emp1 where Designation = 'Trainee';




