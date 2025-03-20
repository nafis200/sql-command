-- hr department theke 

SELECT max(salary) from employee WHERE department_name = 'HR';

SELECT * FROM employee WHERE salary > (SELECT max(salary) from employee WHERE department_name = 'HR')