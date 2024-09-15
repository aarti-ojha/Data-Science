#UNIONS

#A union is how you can combine rows together- not columns like we have been doing with joins where one column is put next to another
#Joins allow you to combine the rows of data

SELECT * FROM employee_demographics
UNION
SELECT * FROM employee_salary;

SELECT age,gender FROM employee_demographics
UNION
SELECT first_name,last_name FROM employee_salary;

SELECT first_name,last_name FROM employee_demographics
UNION
SELECT first_name,last_name FROM employee_salary;

-- UNION by default is union distinct which is why we just have unique first names and last names

SELECT first_name,last_name FROM employee_demographics
UNION ALL  -- gets all the results without removing duplicates
SELECT first_name,last_name FROM employee_salary;

SELECT first_name, last_name, 'Old'
FROM employee_demographics
WHERE age > 50;

SELECT first_name, last_name, 'Old Lady' as Label
FROM employee_demographics
WHERE age > 40 AND gender = 'Female'
UNION
SELECT first_name, last_name, 'Old Man'
FROM employee_demographics
WHERE age > 40 AND gender = 'Male'
UNION
SELECT first_name, last_name, 'Highly Paid Employee'
FROM employee_salary
WHERE salary >= 70000
ORDER BY first_name
;