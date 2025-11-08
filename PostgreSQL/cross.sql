
CREATE TABLE employees (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
);

CREATE TABLE departments(
    dept_id INT,
    dept_name VARCHAR(50)
);

INSERT INTO employees VALUES
(1,'Fahim Asif', 101),
(2,'Abrar Khan', 102);

INSERT INTO departments VALUES
(101, 'IT'),
(102, 'Human Resources');

SELECT * FROM departments;
SELECT * FROM employees;

-- Cross Join
SELECT * FROM employees
CROSS JOIN departments;

-- Natural Join

SELECT * FROM employees
NATURAL JOIN departments;
