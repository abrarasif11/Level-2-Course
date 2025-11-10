
SELECT * FROM employees;

CREATE VIEW dept_avg_salary
AS SELECT department_name, avg(salary) FROM employees GROUP BY department_name;

SELECT * FROM dept_avg_salary;