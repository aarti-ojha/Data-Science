CREATE PROCEDURE large_salaries()
SELECT *
FROM employee_salary
WHERE salary >=5000;

CALL large_salaries();

