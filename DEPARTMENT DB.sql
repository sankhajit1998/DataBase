# Author Sankhajit Roy

SELECT * FROM practice_set.department;   # select the database

# create a database and adding column
CREATE TABLE DEPARTMENT(ID int, DEPT_ZONE varchar(30), DEPT_BLOCK varchar(5), DEPT_NAME varchar(20));

# insert the entities into column
INSERT INTO DEPARTMENT VALUE('101','NORTH','B','IT');
INSERT INTO DEPARTMENT VALUE('102','SOUTH','A','FINACE');
INSERT INTO DEPARTMENT VALUE('103','WEST','B','MANAGEMENT');
INSERT INTO DEPARTMENT VALUE('104','EAST','C','CONSULTANT');
INSERT INTO DEPARTMENT VALUE('105','NORTH-EAST','D','RECEPTION');

# modify the entity
ALTER TABLE department MODIFY DEPT_ZONE VARCHAR(25);

# update the entity
UPDATE department SET DEPT_BLOCK = 'E' WHERE ID = 103 ;

# delete the column
DELETE FROM department WHERE ID = 105;

# delete all column
TRUNCATE TABLE department;

# delete the table
DROP TABLE department;
