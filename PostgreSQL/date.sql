
-- show timezone;
-- Date and Date Functions 
SELECT now();

CREATE TABLE timeZ (ts TIMESTAMP Without time zone , tsz TIMESTAMP with time zone);

INSERT INTO timez values('2025-11-07 10:30:00', '2025-11-07 10:30:00')

SELECT * FROM timez;

SELECT CURRENT_DATE;

SELECT now()::time;

SELECT to_char(now(), 'dd/mm/yyyy');

SELECT CURRENT_DATE - INTERVAL '8 Years';

SELECT age(CURRENT_DATE, '2001-10-30');

SELECT *, age(CURRENT_DATE, dob) FROM students;

SELECT extract(month from '2001-11-29'::date);

-- Group By Function