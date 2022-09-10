use userdatabase;
CREATE TABLE EMPLOYEES (
                            EMP_ID CHAR(9) NOT NULL, 
                            F_NAME VARCHAR(15) NOT NULL,
                            L_NAME VARCHAR(15) NOT NULL,
                            SSN CHAR(9),
                            B_DATE DATE,
                            SEX CHAR,
                            ADDRESS VARCHAR(30),
                            JOB_ID CHAR(9),
                            SALARY DECIMAL(10,2),
                            MANAGER_ID CHAR(9),
                            DEP_ID CHAR(9) NOT NULL,
                            PRIMARY KEY (EMP_ID));
 select * from EMPLOYEES;
 
 #Q1 : retrieve all employees whose address is in Elgin,IL.
 select F_NAME , L_NAME
from EMPLOYEES
where ADDRESS LIKE '%Elgin,IL%' ;

#Q2 : retrieve all employees who were born during the 1970's.
select F_NAME , L_NAME
from EMPLOYEES
where B_DATE LIKE '197%' ;
 
 #Q3 : retrieve all employees in department 5 where salary is between 60000 and 70000.
 select *
from EMPLOYEES
where (SALARY BETWEEN 60000 and 70000)  and DEP_ID = 5 ;

#Q4 : retrieve a list of employees ordered by department id.alter
select F_NAME, L_NAME, DEP_ID 
from EMPLOYEES
order by DEP_ID;

#Q5 : retrieve a list of employees ordered in descending order by department id and within each department ordered alphabectically in descending order by last name.
select F_NAME, L_NAME, DEP_ID 
from EMPLOYEES
order by DEP_ID desc, L_NAME desc;

#Q6 : for each department ID retrieve the number of employees in the dapartment.
select DEP_ID, COUNT(*)
from EMPLOYEES
group by DEP_ID;

#Q7 : for each department retrieve the number of employees in the department and the average employee salary in the department.
select DEP_ID, COUNT(*), AVG(SALARY)
from EMPLOYEES
group by DEP_ID;
 