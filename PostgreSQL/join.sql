
DROP TABLE IF EXISTS post CASCADE;
DROP TABLE IF EXISTS "user" CASCADE;

CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);

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


SELECT * FROM "user";
SELECT * FROM post;

-- Join Table

SELECT title, username FROM post
JOIN "user" on post.user_id = "user".id;

SELECT * FROM post
JOIN "user" on post.user_id = "user".id;

SELECT "user".id FROM post
JOIN "user" on post.user_id = "user".id;

SELECT p.id FROM post p
JOIN "user" on p.user_id = "user".id;

SELECT * FROM post p
JOIN "user"u on p.user_id = u.id;


