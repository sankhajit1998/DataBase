# Author Sankhajit Roy

SELECT * FROM practice_set.employee;   # select the database

# create a database and adding column
CREATE TABLE EMPLOYEE(EMPLOYEE_ID int, EMPLOYEE_NAME varchar(30), EMPLOYEE_AGE int, EMPLOYEE_DEPT varchar(45));

# insert the entities into column
INSERT INTO employee VALUE('101','RAJIB SHIL',27,'IT');
INSERT INTO employee VALUE('102','SUMAN BARMAN',25,'FINACE');
INSERT INTO employee VALUE('103','KARTIK SEN',26,'MANAGEMENT');
INSERT INTO employee VALUE('104','BINAY ROY',30,'CONSULTANT');
INSERT INTO employee VALUE('105','MRINMOY SEN',26,'RECEPTION');

# modify the entity
ALTER TABLE employee MODIFY EMPLOYEE_DEPT VARCHAR(25);

# update the entity
UPDATE employee SET EMPLOYEE_AGE = 29 WHERE EMPLOYEE_ID = 104 ;

# delete the column
DELETE FROM employee WHERE ID = 105;

# delete all column
TRUNCATE TABLE employee;

# delete the table
DROP TABLE employee;
