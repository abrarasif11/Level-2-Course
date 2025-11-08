
SELECT * from students;
SELECT country from students
      GROUP BY country;

SELECT country, count(*), avg(age) from students
      GROUP BY country;

-- having function
SELECT country, count(*), avg(age) from students
      GROUP BY country
      HAVING avg(age) > 20.60;

SELECT extract(year from dob) as birth_year, count(*)
      FROM students
      GROUP BY birth_year