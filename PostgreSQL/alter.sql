SELECT * FROM person;
 

--  Add column 
ALTER TABLE person
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO person (first_name, last_name, age, is_active, dob, email)
VALUES ('Tested', 'User', 25, TRUE, '1990-01-01', 'tested @gmail.com');

-- delete column 
ALTER TABLE person
    DROP COLUMN email;

    -- rename column
ALTER Table person
   RENAME COLUMN age to user_age;

ALTER TABLE person
ADD COLUMN user_age INTEGER;

-- change type 
ALTER TABLE person
    ALTER COLUMN user_email TYPE VARCHAR(50);

-- delete contain 
ALTER TABLE person
    ALTER COLUMN user_age DROP NOT NULL;


-- unique 
ALTER TABLE person
     ADD constraint unique_person_user_age UNIQUE(user_age);

-- delete the table
TRUNCATE TABLE person;
