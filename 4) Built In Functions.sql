-- Drop the PETRESCUE table in case it exists
use userdatabase;
drop table PETRESCUE;
-- Create the PETRESCUE table 
create table PETRESCUE (
	ID INTEGER NOT NULL,
	ANIMAL VARCHAR(20),
	QUANTITY INTEGER,
	COST DECIMAL(6,2),
	RESCUEDATE DATE,
	PRIMARY KEY (ID)
	);
-- Insert sample data into PETRESCUE table
insert into PETRESCUE values 
	(1,'Cat',9,450.09,'2018-05-29'),
	(2,'Dog',3,666.66,'2018-06-01'),
	(3,'Dog',1,100.00,'2018-06-04'),
	(4,'Parrot',2,50.00,'2018-06-04'),
	(5,'Dog',1,75.75,'2018-06-10'),
	(6,'Hamster',6,60.60,'2018-06-11'),
	(7,'Cat',1,44.44,'2018-06-11'),
	(8,'Goldfish',24,48.48,'2018-06-14'),
	(9,'Dog',2,222.22,'2018-06-15')
	
;

select * from PETRESCUE;

#aggregate functions

select SUM(COST) from PETRESCUE;
select SUM(COST) AS SUM_OF_COST from PETRESCUE;
select MAX(QUANTITY) from PETRESCUE;
select AVG(COST) from PERESCUE;
select AVG(COST/QUANTITY) from PETRESCUE where ANIMAL = 'Dog';

#Scalar and String Functions

select ROUND(COST) from PETRESCUE;
select LENGTH(ANIMAL) from PETRESCUE;
select UCASE(ANIMAL) from PETRESCUE;
select * from PETRESCUE where LCASE(ANIMAL) = 'Cat';

#data and time functions

select DAY(RESCUEDATE) from PETRESCUE where ANIMAL = 'Cat';



