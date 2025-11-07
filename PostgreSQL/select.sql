CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT ,
    grade VARCHAR(2),
    course VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
);

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES 
('Fahim', 'Asif', 22, 'A', 'Computer Science', 'fahim.asif@example.com', '2003-05-12', 'A+', 'Bangladesh'),
('Sara', 'Rahman', 21, 'B+', 'Electrical Engineering', NULL, '2004-02-20', 'B+', 'Bangladesh'),
('John', 'Doe', 23, 'A', 'Mechanical Engineering', 'john.doe@example.com', '2002-08-10', 'O+', 'USA'),
('Mehedi', 'Hasan', 22, 'A-', 'Information Technology', NULL, '2003-01-17', 'B-', 'Bangladesh'),
('Anika', 'Sultana', 20, 'B', 'Business Administration', 'anika.sultana@example.com', '2005-03-25', 'AB+', 'India'),
('Rafi', 'Khan', 24, 'A+', 'Civil Engineering', NULL, '2001-09-15', 'A+', 'Bangladesh'),
('Nadia', 'Ahmed', 22, 'B+', 'Architecture', 'nadia.ahmed@example.com', '2003-06-28', 'O+', 'Bangladesh'),
('Michael', 'Smith', 25, 'A', 'Computer Engineering', 'michael.smith@example.com', '2000-12-05', 'B+', 'Canada'),
('Priya', 'Patel', 21, 'A-', 'Economics', 'priya.patel@example.com', '2004-01-30', 'AB-', 'India'),
('Tarek', 'Hossain', 23, 'B', 'Software Engineering', 'tarek.hossain@example.com', '2002-04-14', 'A+', 'Bangladesh'),
('Lamia', 'Akter', 20, 'A', 'Psychology', NULL, '2005-11-09', 'O-', 'Bangladesh'),
('David', 'Lee', 22, 'A', 'Data Science', 'david.lee@example.com', '2003-03-22', 'B+', 'USA'),
('Muna', 'Chowdhury', 21, 'B+', 'Pharmacy', 'muna.chowdhury@example.com', '2004-07-18', 'AB+', 'Bangladesh'),
('Omar', 'Faruk', 24, 'A-', 'Cyber Security', NULL, '2001-10-03', 'O+', 'Bangladesh'),
('Emily', 'Johnson', 23, 'B', 'Environmental Science', 'emily.johnson@example.com', '2002-09-12', 'A-', 'UK');


-- use Order as Shorting 
SELECT * FROM students ORDER BY first_name ASC;
SELECT * FROM students ORDER BY age DESC;

--  unique data
SELECT DISTINCT country from students;
SELECT DISTINCT blood_group from students;

-- data filtering 

SELECT * FROM students
    WHERE country = 'Bangladesh';

SELECT * FROM students
     WHERE grade = 'A' AND country = 'USA';

SELECT * FROM students
    WHERE country = 'Bangladesh' OR country = 'USA' AND age='20';

-- data comparison
SELECT * FROM students
    WHERE country <> 'USA';

-- Scaler and Aggregate function 
SELECT * FROM students

SELECT upper(first_name) as first_name_in_upper_case, * FROM students

SELECT concat(first_name,' ',last_name) FROM students;

SELECT length(first_name) FROM students;

SELECT AVG(age) from students;

SELECT MIN(age) from students;

SELECT MAX(age) from students;

SELECT SUM(age) from students;

SELECT count(*) from students;


SELECT max(length(first_name)) from students;

-- Logical Negation NOT, understanding NULL and the Null-Coalescing Operator
SELECT * FROM students
  WHERE email IS NOT NULL;

SELECT * FROM students

SELECT COALESCE(email, 'NULL')as "Emails" FROM students;

--  Exploring IN, BETWEEN, LIKE, and ILIKE Operators

SELECT * FROM students WHERE country IN('Bangladesh','UK','Canada');

SELECT * FROM students WHERE country NOT IN('Bangladesh','UK','Canada');

SELECT * FROM students
   WHERE dob BETWEEN '2001-10-03' and '2002-09-12' ORDER BY dob;

SELECT * FROM students
   WHERE first_name LIKE '%ka';
SELECT * FROM students
   WHERE first_name LIKE '__a_';

--    ILIKE case insensitive
SELECT * FROM students
   WHERE first_name ILIKE 'A%';

   