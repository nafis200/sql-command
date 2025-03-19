

-- create table post (
-- user_id INTEGER REFERENCES user(id)
--   )

-- 2 two table post and user

--  post e id,title,user_id

-- user e id and username

-- now post table e user er id ache user table er tar username lagbe.

-- Create two table

-- user reserve key word
CREATE TABLE "user"(
  id SERIAL PRIMARY KEY,
  username VARCHAR(30) NOT NULL
);

INSERT INTO "user" (username) VALUES 
('Alice'),
('Bob'),
('Charlie'),
('David'),
('Eve');

SELECT * from "user"

-- CREATE TABLE post(
--   id SERIAL PRIMARY KEY,
--   title text NOT NULL,
--   user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
-- );

-- CREATE TABLE post(
--   id SERIAL PRIMARY KEY,
--   title text NOT NULL,
--   user_id INTEGER REFERENCES "user"(id) ON DELETE SET NULL
-- );

CREATE TABLE post(
  id SERIAL PRIMARY KEY,
  title text NOT NULL,
  user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
);

INSERT INTO post (title, user_id) VALUES 
('My first post', 1),
('Learning SQL', 2),
('PostgreSQL is awesome', 3),
('Database design tips', 4),
('Best practices for indexing', 5),
('How to use JOIN in SQL', 1),
('Understanding transactions', 2),
('Normalization in databases', 3),
('Optimizing queries', 4),
('Advanced SQL techniques', 5);

ALTER TABLE post
  ALTER COLUMN user_id set NOT NULL

SELECT * FROM post

-- 50-4 video table 9.00

-- deleteion

-- deletetion constraint on Delete user

-- casecading deletion --> ON DELETE CASCADE

-- Setting null --> ON delete set null

-- restrict delete --> on delete restrict / on delete no action (default)

-- Set default value -->  On delete set Default


 DELETE from "user"
 where id = 1

--  give error above query

drop table post

drop table "user"


SELECT * FROM post

