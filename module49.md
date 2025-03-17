
alter command

Rename table
Add/Drop coloumn
Rename a coloumn
MOdify datatype of coloumn
Setting default value for coloumn
Add/drop constaint

<!-- Vs code add korbo  -->

1. install extension



SELECT * FROM person2

ALTER TABLE person2
  ADD COLUMN email VARCHAR(30) DEFAULT'default@gmail.com' NOT NULL

INSERT INTO person2 values(3,'nabil','ahamed',20,'2000-04-15')

ALTER TABLE person2
DROP COLUMN email

ALTER TABLE person2
 RENAME COLUMN age to user_age

ALTER TABLE person2 
  ALTER COLUMN first_name TYPE VARCHAR(30);

-- not null constraint add

ALTER TABLE person2
 ALTER COLUMN user_age set NOT NULL

-- remove constraint


ALTER TABLE person2
 ALTER COLUMN user_age DROP NOT NULL

 <!-- Clause -->

 select
 from
 where
 order by
 group by
 having
 join
 distnict 
 limit



