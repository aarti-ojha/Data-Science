# Subqueries
#So subqueries are queries within queries. 

SELECT * 
FROM employee_salary;

SELECT *
FROM employee_demographics
WHERE employee_id IN 
			(SELECT employee_id
				FROM employee_salary
                WHERE dept_id = 1);
                
SELECT first_name, salary, AVG(salary)
FROM employee_salary
GROUP BY first_name, salary;

SELECT first_name, 
salary, 
(SELECT AVG(salary) 
	FROM employee_salary)
FROM employee_salary;

SELECT *
FROM (SELECT gender, MIN(age), MAX(age), COUNT(age),AVG(age)
FROM employee_demographics
GROUP BY gender) AS table_A
;

SELECT gender, AVG(Min_age)
FROM (SELECT gender, MIN(age) Min_age, MAX(age) Max_age, COUNT(age) Count_age ,AVG(age) Avg_age
FROM employee_demographics
GROUP BY gender) AS Agg_Table
GROUP BY gender
;