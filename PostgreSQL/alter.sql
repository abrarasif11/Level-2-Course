SELECT * FROM person;

ALTER TABLE person
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO person (first_name, last_name, age, is_active, dob, email)
VALUES ('Tested', 'User', 25, TRUE, '1990-01-01', 'tested @gmail.com');
