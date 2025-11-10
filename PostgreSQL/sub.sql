-- Sub Query
CREATE TABLE employees (
      employee_id SERIAL PRIMARY KEY,
      employee_name VARCHAR(50) NOT NULL,
      department_name VARCHAR(50),
      salary DECIMAL(10,2),
      hire_date DATE
);

INSERT INTO employees (employee_name, department_name, salary, hire_date) VALUES
('Fahim Ahmed', 'IT', 55000.00, '2021-03-12'),
('Nusrat Jahan', 'HR', 45000.00, '2020-07-18'),
('Rakib Hasan', 'Finance', 60000.00, '2022-01-05'),
('Sara Akter', 'Marketing', 48000.00, '2019-11-25'),
('Mizanur Rahman', 'Sales', 52000.00, '2023-04-10'),
('Shamim Hossain', 'Logistics', 40000.00, '2020-02-15'),
('Priya Sultana', 'Design', 47000.00, '2021-09-30'),
('Jahidul Islam', 'Support', 38000.00, '2022-06-22'),
('Sadia Yasmin', 'Development', 65000.00, '2018-12-05'),
('Abdullah Khan', 'Management', 75000.00, '2017-08-14'),
('Tania Rahman', 'HR', 43000.00, '2020-10-03'),
('Mehedi Hasan', 'IT', 58000.00, '2021-12-11'),
('Rubel Mia', 'Finance', 61000.00, '2023-01-20'),
('Lamia Chowdhury', 'Marketing', 49500.00, '2019-04-17'),
('Shakib Al Mamun', 'Support', 39000.00, '2022-08-05'),
('Afsana Karim', 'Design', 45500.00, '2021-02-21'),
('Kamrul Ahsan', 'Sales', 53000.00, '2020-05-09'),
('Nabila Hossain', 'Development', 67000.00, '2018-09-14'),
('Farhan Siddique', 'Logistics', 42000.00, '2019-06-28'),
('Zarin Tasnim', 'Management', 78000.00, '2017-03-19');

DROP TABLE employees;

SELECT * FROM employees;

-- Retrieve all employees whose salary is greater than the highest salary of the HR dept (45000)

-- //! SELECT * FROM employees WHERE salary > 45000

SELECT * FROM employees WHERE salary > (SELECT max(salary) from employees WHERE department_name = 'HR')

SELECT *, (SELECT sum(salary) FROM employees) FROM employees;

SELECT * FROM (SELECT department_name, sum(salary) FROM employees GROUP BY department_name) as sum_dept_salary;