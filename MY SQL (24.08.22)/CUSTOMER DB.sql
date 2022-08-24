# Author Sankhajit Roy

# create a database and adding column
create table CUSTOMER(
cust_id varchar(15),
Fname varchar(15),
Area char(2),
Phone numeric(10),
DOB date,
Payment numeric
);

# insert the entities into column
insert into customer values('101','AKASH','SA',6125467,'1996-01-15',800.50);
insert into customer values('102','PRONOY','MU',5560379,'1997-12-20',1000.75);
insert into customer values('103','TUHIN','DA',4560389,'1997-07-25',500.00);
insert into customer values('104','BIKAS','BA',6125401,'1996-02-15',860.00);
insert into customer values('105','ARNAB','NA',null,'1999-02-15',500.50);
insert into customer values('106','PALLAB','GH',5125274,'1997-07-23',1500.50);

# update the entity
update customer set Phone = 9080706 where cust_id ='102';
update customer set Phone = 9080707 where cust_id ='104';
update customer set DOB = '1998-07-25' where cust_id ='103';
update customer set DOB = '1997-08-15' where cust_id ='105';

# delete particular column
delete from customer where cust_id = '101';
delete from customer where cust_id = '105';

# delete all column
delete from customer;

# insert new entities into column
insert into customer values('101','DIYA','SA',6125467,'1996-01-15',800.50);
insert into customer values('102','PUJA','MU',5560379,'1997-12-20',1000.75);
insert into customer values('103','SIMA','DA',4560389,'1997-07-25',500.00);
insert into customer values('104','BINITA','BA',6125401,'1996-02-15',860.00);
insert into customer values('105','SOMA','NA',null,'1999-02-15',500.50);

# update the entity
update customer set Phone = 9080403 where cust_id = '105';

# delete particular column
delete from customer where Area = 'BA'; 


