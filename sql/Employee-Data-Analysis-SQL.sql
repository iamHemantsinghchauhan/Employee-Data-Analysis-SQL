
--																-- 	 Employee-Data-Analysis-and-Insights-SQL--																										--  


CREATE DATABASE Employee_Database_Analysis_SQL;

use Employee_Database_Analysis_SQL;



CREATE TABLE employees (employee_id     INT PRIMARY KEY,first_name VARCHAR(20),  
last_name  VARCHAR(25), phone_number VARCHAR(20),hire_date  DATE,job_id      VARCHAR(15), 
salary          DECIMAL(10,2),manager_id      INT,department_id   INT);



INSERT INTO employees VALUES
(100,'Steven','King','515.123.4567','1987-06-17','AD_PRES',24000.00,0,90),
(101,'Neena','Kochhar','515.123.4568','1987-06-18','AD_VP',17000.00,100,90),
(102,'Lex','De Haan','515.123.4569','1987-06-19','AD_VP',17000.00,100,90),
(103,'Alexander','Hunold','590.423.4567','1987-06-20','IT_PROG',9000.00,102,60),
(104,'Bruce','Ernst','590.423.4568','1987-06-21','IT_PROG',6000.00,103,60),
(105,'David','Austin','590.423.4569','1987-06-22','IT_PROG',4800.00,103,60),
(106,'Valli','Pataballa','590.423.4560','1987-06-23','IT_PROG',4800.00,103,60),
(107,'Diana','Lorentz','590.423.5567','1987-06-24','IT_PROG',4200.00,103,60),
(108,'Nancy','Greenberg','515.124.4569','1987-06-25','FI_MGR',12000.00,101,100),
(109,'Daniel','Faviet','515.124.4169','1987-06-26','FI_ACCOUNT',9000.00,108,100),
(110,'John','Chen','515.124.4269','1987-06-27','FI_ACCOUNT',8200.00,108,100),
(111,'Ismael','Sciarra','515.124.4369','1987-06-28','FI_ACCOUNT',7700.00,108,100),
(112,'Jose Manuel','Urman','515.124.4469','1987-06-29','FI_ACCOUNT',7800.00,108,100),
(113,'Luis','Popp','515.124.4567','1987-06-30','FI_ACCOUNT',6900.00,108,100),
(114,'Den','Raphaely','515.127.4561','1987-07-01','PU_MAN',11000.00,100,30),
(115,'Alexander','Khoo','515.127.4562','1987-07-02','PU_CLERK',3100.00,114,30),
(116,'Shelli','Baida','515.127.4563','1987-07-03','PU_CLERK',2900.00,114,30),
(117,'Sigal','Tobias','515.127.4564','1987-07-04','PU_CLERK',2800.00,114,30),
(118,'Guy','Himuro','515.127.4565','1987-07-05','PU_CLERK',2600.00,114,30),
(119,'Karen','Colmenares','515.127.4566','1987-07-06','PU_CLERK',2500.00,114,30),
(120,'Matthew','Weiss','650.123.1234','1987-07-07','ST_MAN',8000.00,100,50);


select * from employees;
-- Q.1) Write a query to display the names (first_name, last_name) using alias name "First Name", "Last Name".
-- Ans.
 Select  first_name as "First Name", last_name as "Last Name" from employees;
 

 -- Q.2)Write a query to get unique department ID from employee table.
 -- Ans.
 Select distinct(Department_id) from employees;

    
    
    
    
    
    
-- Q.3)Write a query to get all employee details from the employee table order by first name, descending.
-- Ans.
 select * from employees order by first_name desc;
 
 
 
 
 
 
 

 -- Q.4)Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.
 -- Ans.
 select employee_id , concat(first_name," ", last_name), salary from employees order by salary asc;




-- Q.5)Write a query to get the maximum and minimum salary from employees table.
-- Ans.
	Select max(salary) as maxmium_salary ,min(salary) as Minimum_salary from Employees;

    
    
    
    
    
    

    
-- Q.6)Write a query to get the first 3 characters of first name from employees table. 
-- Ans. 
select substring(first_name,1,3) from employees;




-- Q.7)Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 90 in ascending order.
select first_name, last_name,department_id from employees where department_id in (30,90) order by Department_id asc ; 






-- 																			-- LIKE OPERATORS -- 																						-- 
-- Q.8)Write a query to display the last name of employees having 'e' as the third character.
select last_name from employees where last_name like '__e%';





-- 																				-- sub queries-- 																					

-- Q.9)Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose last_name='Sciarra'.	
-- last='abc' => salary => 45000 others records

-- Ans. 
select first_name, last_name, salary
from employees where salary > (
    SELECT salary FROM employees
    WHERE last_name = 'Sciarra');
    
    
    
    
   -- Q.10)Write a query to find the name (first_name, last_name) of the employees who are managers.
   -- Ans. 
   Select distinct  e.first_name, e.last_name from employees e
    join employees m on e.employee_id = m.manager_id;
   
 

-- Q.11)Write a query to get the firstname, lastname who joined in the month of June.
-- Ans.
Select first_name, last_name from employees
where month (hire_date) = 6;


































