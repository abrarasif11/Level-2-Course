
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

-- Foreign Key Constraints
CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) on delete set DEFAULT DEFAULT 2
)   


INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('shagor'),
('nodi'),
('priya');

SELECT * FROM "user";

TRUNCATE TABLE "user" RESTART IDENTITY CASCADE;

INSERT INTO "user" (username) VALUES
('akash'),
('batash'),
('shagor'),
('nodi'),
('priya');


INSERT INTO post (title, user_id) VALUES
('My first blog post', 1),
('Learning SQL basics', 2),
('Exploring IoT projects', 3),
('Travel diaries of Nodi', 4),
('Priya’s event planning tips', 5);


DROP TABLE post;

DROp Table "user";


ALTER TABLE post 
    ALTER COLUMN user_id set NOT NULL;

SELECT * FROM "user";
SELECT * FROM post;

INSERT INTO post (title, user_id) VALUES('test', 1)

INSERT INTO post (title, user_id) VALUES('testN', NULL)

-- Enforcing Referential Integrity: Behaviors During Data Deletion
-- Default DELETE

DELETE FROM "user"
   WHERE id = 4;
