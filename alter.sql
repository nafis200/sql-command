  
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


-- unique primary,foreign key multiple value add korte pari

ALTER TABLE person2
ADD constraint unique_person2_user_age UNIQUE(user_age);

ALTER TABLE person2
DROP constraint unique_person2_user_age;

-- all row remove kore dibe but structure same
TRUNCATE TABLE person3

-- pura table ke delete kore dibe
DROP TABLE person3



