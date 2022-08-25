# Author Sankhajit Roy

# create a table and adding column
SELECT * FROM practice_set.customer_demo;
CREATE TABLE CUSTOMER_DEMO(Cust_id varchar(5), Fname varchar(15), Lname VARCHAR(15), Area CHAR(2), Phone numeric(10), DOB VARCHAR(20), Payment numeric(6,2));

SELECT * FROM practice_set.customer_demo;

# insert values in columns
INSERT INTO customer_demo VALUE('A01', 'Ivan', 'Ross', 'SA', 6125467,'15-jan-86', 800.50);
INSERT INTO customer_demo VALUE('A02', 'Vandana', 'Ray', 'MU', 5560379,'20-dec-87', 1000.75);
INSERT INTO customer_demo VALUE('A03', 'Pramada', 'Jauguste', 'DA', 4560389,'25-jul-67', 500.00);
INSERT INTO customer_demo VALUE('A04', 'Basu ', 'Navindi', 'BA', 6125401 ,'30-feb-56', 860.00);
INSERT INTO customer_demo VALUE('A05', 'Ravi', 'Shridhar', 'NA', null,'15-feb-89', 500.50);
INSERT INTO customer_demo VALUE('A06', 'Rukmini', 'Aiyer', 'GH', 5125274,'23-jul-87', 1500.50);

SELECT * FROM practice_set.customer_demo;

# add new column
ALTER TABLE customer_demo ADD COLUMN `SYS_DATE` DATE AFTER `Payment`;

# update the columns by order
update customer_demo set PHONE = 758528 where CUST_ID = 'A02';
update customer_demo set PHONE = 988528 where CUST_ID = 'A05';

SELECT * FROM practice_set.customer_demo;

# update the columns by order
update customer_demo set DOB = '17-AUG-83' where CUST_ID = 'A03';
update customer_demo set DOB = '21-JUN-89' where CUST_ID = 'A05';

# delete the columns by order
delete FROM customer_demo where CUST_ID = 'A01';
delete FROM customer_demo where CUST_ID = 'A05';

# delete all coumns
TRUNCATE TABLE customer_demo;

# insert values in columns
INSERT INTO customer_demo VALUE('B01', 'Ratan', 'Ross', 'SA', 6125467,'15-jan-86', 800.50, '1996-01-15' );
INSERT INTO customer_demo VALUE('B02', 'Vivek', 'Ray', 'MU', 5560379,'20-dec-87', 1000.75, '1997-12-20');
INSERT INTO customer_demo VALUE('B03', 'Pratim', 'Jauguste', 'DA', 4560389,'25-jul-67', 500.00, '1997-07-25');
INSERT INTO customer_demo VALUE('B04', 'Bina', 'Navindi', 'BA', 6125401 ,'30-feb-56', 860.00, '1996-02-15');
INSERT INTO customer_demo VALUE('B05', 'Ratul', 'Shridhar', 'NA', null,'15-feb-89', 500.50, '1990-12-25');
INSERT INTO customer_demo VALUE('B06', 'Smita', 'Aiyer', 'GH', 5125274,'23-jul-87', 1500.50, '1996-08-15');

SELECT * FROM practice_set.customer_demo;

# delete column by order
delete FROM customer_demo where CUST_ID = 'B05';

SELECT * FROM practice_set.customer_demo;



