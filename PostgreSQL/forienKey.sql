
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

-- Foreign Key Constraints
CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
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
INSERT INTO post (title, user_id) VALUES
('My first blog post', 1),
('Learning SQL basics', 2),
('Exploring IoT projects', 3),
('Travel diaries of Nodi', 4),
('Priya’s event planning tips', 5);

SELECT * FROM "user";




