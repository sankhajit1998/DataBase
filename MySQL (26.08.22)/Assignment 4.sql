# Author Sankhajit Roy

# create a table and adding columns
create table customer(
Cust_id varchar(5) primary key not null,
Fname varchar(15) not null,
Lname varchar(15),
Area varchar(5) not null,
Phone numeric(10)
);

# create another table and adding columns
CREATE TABLE MOVIE (
  MV_NO INT(5) primary KEY ,
  CUST_ID VARCHAR(45) ,
  TITLE VARCHAR(45)NOT NULL,
  STAR VARCHAR(45) NOT NULL,
  PRICE INT,
  foreign key(CUST_ID) references CUSTOMER_ID(CUST_ID)
  );
  
# insert values in table coustomer
insert into customer values('A01','Ivan','Ross','SA',6125467);
insert into customer values('A02','Vandana','Ray','MU',5560379);
insert into customer values('A03','Pramada','Jauguste','DA',4560389);
insert into customer values('A04','Basu','Navindi','BA',6125401);
insert into customer values('A05','Ravi','Shridhar','NA',null);
insert into customer values('A06','Rukmini','Aiyer','GH',5125274);

# insert values in table movie
insert into MOVIE values(1,'A02','Bloody','JC',181);
insert into MOVIE values(2,'A04','The Firm','TC',200);
insert into MOVIE values(3,'A01','Pretty Women','RG',151);
insert into MOVIE values(4,'A06','Home Alone','MC',150);
insert into MOVIE values(5,'A05','The Fugitive','MF',200);
insert into MOVIE values(6,'A03','Coma','MD',100);
insert into MOVIE values(7,'A02','Dracula','GO',150);
insert into MOVIE values(8,'A06','Quick Change','BM',100);
insert into MOVIE values(9,'A03','Gone with the Wind','CB',200);
insert into MOVIE values(10,'A05','Carry on Doctor','LP',100);

#5 Display the movie titles, whose price is greater than 100 but less than 200.
select Title from movie where Price > 100 and Price < 200;

#6 Display the movie titles, whose price is greater than 100 but less than 200.
select Cust_id from movie where Star in ('JC','TC','MC');

#7 Display the details of those customers who have an A in their area name.
select * from customer where Area like '%A%';

#8 Display the movie titles, whose price is within 180 and the movie titles are of exactly 6 characters
select Title from movie where length(Title)= 6  and Price < 180;

#9 Display the movie name, their original prices and the prices after 10% increment. Give alias name to the incremented price column.
select Title,Price,Price + (Price * 10/100) as 'incremented price' from movie;

#10 Display all the customer details in the following way:
#   ‘Ivan Ross stays in SA and his phone number is 6125467.’ 
select Fname,Lname,Area,Phone from customer where Cust_id = 'A01';

#11 Add a not null constraint to the Lname field in Customer.
alter table customer modify Lname varchar(45) not null;

#12 Display the customer’s name whose phone number is not recorded
select Fname from customer where Phone is null;

#13 Add the phone number according to your own wish for the person mentioned in problem no 12.
update customer set Phone = 8565745 where Fname = 'Ravi';

#14 Display the unique customer ids from movie table.
select distinct Cust_id from movie;

#15 Remove the not null constraint from Star column in movie table.
ALTER TABLE movie modify Star varchar(45);

#16 Delete any row from the Customer table. If you cannot delete, then note the error message displayed.
delete from customer where Cust_id = 'A02';

#17 Delete any row from the Movie table. If you cannot delete, then note the error message displayed.
delete from movie where Cust_id = 'A02';


