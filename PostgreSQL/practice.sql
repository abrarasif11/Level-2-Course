
CREATE TABLE employees (
      employee_id SERIAL PRIMARY KEY,
      employee_name VARCHAR(50),
      department_id INT REFERENCES departments(department_id),
      salary DECIMAL(10,2),
      hire_date DATE
);

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO departments (department_name)
VALUES
('Human Resources'),
('Finance'),
('Information Technology'),
('Marketing'),
('Operations'),
('Sales'),
('Customer Support'),
('Research and Development'),
('Procurement'),
('Administration');

INSERT INTO employees (employee_name, department_id, salary, hire_date)
VALUES
('Alice Rahman', 1, 50000, '2021-03-15'),
('Bashir Ahmed', 2, 60000, '2020-07-20'),
('Chowdhury Hasan', 3, 70000, '2022-01-05'),
('Dipa Sultana', 4, 48000, '2021-11-10'),
('Emran Karim', 5, 55000, '2019-08-25'),
('Farhana Jahan', 6, 62000, '2020-05-17'),
('Golam Rabbani', 7, 46000, '2022-06-12'),
('Humaira Akter', 8, 75000, '2023-02-08'),
('Iqbal Hossain', 9, 58000, '2021-09-30'),
('Jannat Ferdous', 10, 52000, '2023-04-21'),
('Kamrul Islam', 1, 54000, '2020-02-14'),
('Lamia Chowdhury', 2, 61000, '2022-05-09'),
('Mahmudul Hasan', 3, 71000, '2019-12-28'),
('Nasrin Akter', 4, 49500, '2021-07-19'),
('Omar Faruk', 5, 56000, '2020-09-23'),
('Papia Rahman', 6, 63000, '2022-03-03'),
('Quazi Nabil', 7, 47000, '2023-01-12'),
('Rafiq Ullah', 8, 76000, '2021-06-04'),
('Sadia Afrin', 9, 59000, '2020-10-29'),
('Tariq Ahmed', 10, 53000, '2023-08-18');


-- Q1 - Inner Join with Employee and Department
SELECT * FROM employees as e
JOIN departments as d ON e.department_id = d.department_id;

-- Q2 - Show Dept Name with Avg Salary;
SELECT department_name, round(avg(salary)) FROM employees
JOIN departments USING(department_id)
GROUP BY department_name
;
-- Q3 Count Employees in Each dept
SELECT department_name, count(*) FROM employees
JOIN departments USING(department_id)
GROUP BY department_name;

-- Q4 Find the dept name with highest salary
SELECT department_name, round(avg(salary)) as avg_salary FROM employees
JOIN departments USING(department_id)
GROUP BY department_name
ORDER BY avg_salary DESC
LIMIT 1
;
