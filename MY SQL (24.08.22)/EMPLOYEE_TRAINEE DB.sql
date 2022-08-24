# Author Sankhajit Roy

# create a database and adding column
create table emp_trainee(
Emp_id numeric(3),
ID_Name varchar(10),
Basic numeric(6,2),
Designation varchar(10),
Age numeric(2)
);

# insert the entities into column from emp1 table
insert into emp_trainee select * from emp1;

# select both table
select * from emp1,emp_trainee;

# modify specific column
alter table emp_trainee modify Designation varchar(30);

# update specific column
update emp_trainee set Designation = 'Programmer_Trainee';

# delete specific column
alter table emp_trainee DROP COLUMN Age;


