SELECT * FROM person;

ALTER TABLE person
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

INSERT into person VALUES(3, 'test2', 95)