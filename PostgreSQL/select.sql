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
('Sara', 'Rahman', 21, 'B+', 'Electrical Engineering', 'sara.rahman@example.com', '2004-02-20', 'B+', 'Bangladesh'),
('John', 'Doe', 23, 'A', 'Mechanical Engineering', 'john.doe@example.com', '2002-08-10', 'O+', 'USA'),
('Mehedi', 'Hasan', 22, 'A-', 'Information Technology', 'mehedi.hasan@example.com', '2003-01-17', 'B-', 'Bangladesh'),
('Anika', 'Sultana', 20, 'B', 'Business Administration', 'anika.sultana@example.com', '2005-03-25', 'AB+', 'India');

-- use Order as Shorting 
-- SELECT * FROM students ORDER BY first_name ASC;
-- SELECT * FROM students ORDER BY age DESC;

--  unique data
-- SELECT DISTINCT country from students;
-- SELECT DISTINCT blood_group from students;

-- data filtering 

SELECT * FROM students
    WHERE country = 'Bangladesh';

SELECT * FROM students
     WHERE blood_group = 'A+';
