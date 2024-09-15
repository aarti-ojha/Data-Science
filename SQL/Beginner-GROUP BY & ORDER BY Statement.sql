-- Group By
-- When you use the GROUP BY clause in a MySQL query, it groups together rows that have the same values in the specified column or columns.
-- GROUP BY is going to allow us to group rows that have the same data and run aggregate functions on them

SELECT *
FROM employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender
;

SELECT first_name
FROM employee_demographics
GROUP BY gender
;

SELECT occupation
FROM employee_salary
GROUP BY occupation
;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;

SELECT gender, MIN(age), MAX(age), COUNT(age),AVG(age)
FROM employee_demographics
GROUP BY gender
;


#10 - The ORDER BY clause:
-------------------------
#The ORDER BY keyword is used to sort the result-set in ascending or descending order.

#The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

SELECT *
FROM employee_demographics
ORDER BY first_name;

SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age;

SELECT *
FROM employee_demographics
ORDER BY gender DESC, age DESC;
#now we don't actually have to spell out the column names. We can actually just use their column position
SELECT *
FROM employee_demographics
ORDER BY 5 DESC, 4 DESC;