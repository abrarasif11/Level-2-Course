
SELECT * FROM employees;

CREATE FUNCTION emp_count()
RETURNS INT
LANGUAGE SQL
as 
$$
SELECT count(*) FROM employees;
$$

SELECT count(*) FROM employees;

SELECT emp_count();

CREATE or REPLACE FUNCTION delete_emp()
RETURNS void 
LANGUAGE SQL
as 
$$
   DELETE FROM employees where employee_id = 17;
$$

SELECT delete_emp();

CREATE or REPLACE FUNCTION delete_emp_by_id(p_emp_id int)
RETURNS void 
LANGUAGE SQL
as 
$$
   DELETE FROM employees where employee_id = (p_emp_id);
$$

SELECT delete_emp_by_id(19);
