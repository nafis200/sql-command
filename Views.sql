
-- View and programming function almost same

CREATE VIEW dept_avg_salary 
as 
SELECT department_name,avg(salary) FROM employee GROUP BY department_name


SELECT * from dept_avg_salary


-- Procedure function

SELECT * from person2

CREATE Function exp_count()
RETURNS INT
LANGUAGE SQL
as 
$$
 SELECT count(*) from person2
$$

SELECT exp_count()

CREATE or REPLACE FUNCTION delete_exp(emp_id int)
RETURNS void
LANGUAGE SQL  
as  
$$
 DELETE FROM person2 WHERE person_id = emp_id
$$

SELECT delete_exp(2)

SELECT * from person2  


-- main difference between function procedural

-- procedural dosent return any thing 

CREATE Procedure remove_employees(emp_id int)
LANGUAGE plpgsql
as  
$$
  DECLARE
  test_var INT; 
  BEGIN 
   SELECT person_id INTO test_var FROM person2 WHERE person_id = emp_id;
   DELETE FROM person2 WHERE person_id = emp_id;
  END
$$

Call remove_employees(1) 

INSERT INTO person2 (first_name, last_name, user_age, dob) VALUES
('Liam', 'Anderson', 28, '1997-05-15'),
('Emma', 'Brown', 25, '2000-08-22'),
('Noah', 'Clark', 32, '1993-12-11'),
('Olivia', 'Davis', 27, '1998-04-30'),
('William', 'Evans', 30, '1995-06-14'),
('Sophia', 'Garcia', 26, '1999-09-10'),
('James', 'Harris', 35, '1990-03-25'),
('Isabella', 'Johnson', 24, '2001-07-18'),
('Benjamin', 'Martinez', 29, '1996-11-05'),
('Mia', 'Miller', 23, '2002-02-27'),
('Lucas', 'Moore', 31, '1994-10-08'),
('Charlotte', 'Nelson', 28, '1997-12-19'),
('Henry', 'Perez', 26, '1999-05-06'),
('Amelia', 'Roberts', 27, '1998-07-09'),
('Alexander', 'Smith', 34, '1991-01-13'),
('Evelyn', 'Taylor', 25, '2000-06-20'),
('Daniel', 'Thomas', 30, '1995-09-03'),
('Scarlett', 'Walker', 29, '1996-08-15'),
('Matthew', 'White', 33, '1992-11-28'),
('Ava', 'Williams', 22, '2003-04-12');


SELECT * from person2

