
SELECT * from students;
SELECT country from students
      GROUP BY country;

SELECT country, count(*), avg(age) from students
      GROUP BY country;