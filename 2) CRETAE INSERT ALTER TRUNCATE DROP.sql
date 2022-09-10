use userdatabase;

#CREATE TABLE 

create table PETSALE(
ID integer not null,
PET char(20),
SALESPRICE decimal(6,2),
PROFIT decimal(6,2),
SALEDATE date
);

create table PET(
ID integer not null,
ANIMAL varchar(20),
QUANTITY integer
);

#INSERT VALUE INTO TABLE

INSERT INTO PETSALE VALUES
(1, 'Cat', 450.09, 100.47, '2018-05-29'),
(2, 'Dog', 666.66, 150.76, '2018-06-01'),
(3, 'Parrot', 50.00, 8.9, '2018-06-04'),
(4, 'Hamster', 60.60, 12, '2018-06-01'),
(5, 'Goldfish', 48.48, 3.5, '2018-06-14');

INSERT INTO PET VALUES
(1, 'Cat', 3),
(2, 'Dog', 4),
(3, 'Hamster', 2);

SELECT * FROM PETSALE;
SELECT * FROM PET;

#ALTER 
#ALTER USING ADD COLUMN

alter table PETSALE add column QUANTITY integer;
select * from PETSALE;

update PETSALE set QUANTITY = 9 where ID = 1;
update PETSALE set QUANTITY = 3 where ID = 2;
update PETSALE set QUANTITY = 2 where ID = 3;
update PETSALE set QUANTITY = 6 where ID = 4;
update PETSALE set QUANTITY = 24 where ID = 5;

select * from PETSALE;

#alter using drop column

alter table PETSALE drop column PROFIT;
select * from PESALE;

#alter using rename column

alter table PETSALE rename column PET to ANIMAL;
select * from PETSALE;

#TRUNCATE
truncate table PET;
select * from PET;

#DROP

drop table PET;
select * from PET;







