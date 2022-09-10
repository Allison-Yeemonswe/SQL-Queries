
--- Query 1 ---
#execute a working query using a sub-select to retrieve all employee records whose salary is lower than the average salary.
select * 
from employees 
where salary < AVG(salary)
;
--- Query 2---	
#execute a column expression that retrieves all employee records with EMP_ID, SALARY and maximum salary as MAX_SALARY in every row.
select EMP_ID, F_NAME, L_NAME, SALARY 
from employees 
where SALARY < 
	(select AVG(SALARY) 
	from employees)
;
--- Query 3 ---
#execute a table expresssion for the employee table that excludes columns with sensitive employee data(does not include columns : SSN,B_DATE,SEX,ADDRESS,SALARY)
select EMP_ID, SALARY, MAX(SALARY) AS MAX_SALARY 
from employees
;	
