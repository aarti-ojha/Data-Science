-- Joins

-- joins allow you to combine 2 tables together (or more) if they have a common column.
-- doesn't mean they need the same column name, but the data in it are the same and can be used to join the tables together
-- there are several joins we will look at today, inner joins, outer joins, and self joins


-- INNER JOIN returns all columns that are in both tables.
SELECT * 
FROM employee_demographics AS D
INNER JOIN employee_salary AS S
    ON D.employee_id = S.employee_id;

-- use aliasing!
SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;


-- OUTER JOINS

-- for outer joins we have a left and a right join
-- a left join will take everything from the left table even if there is no match in the join, but will only return matches from the right table
-- the exact opposite is true for a right join

SELECT *
FROM employee_salary sal
LEFT JOIN employee_demographics dem
	ON dem.employee_id = sal.employee_id;
    
SELECT *
FROM employee_salary sal
RIGHT JOIN employee_demographics dem
	ON dem.employee_id = sal.employee_id;
    
-- Self Join

-- a self join is where you tie a table to itself
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id = emp2.employee_id
    ;

-- now let's change it to give them their secret santa
SELECT *
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1  = emp2.employee_id
    ;

SELECT emp1.employee_id as emp_santa, emp1.first_name as santa_first_name, emp1.last_name as santa_last_name, emp2.employee_id, emp2.first_name, emp2.last_name
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1  = emp2.employee_id;
    
-- Joining multiple tables

-- now we have on other table we can join - let's take a look at it
SELECT * 
FROM parks_and_recreation.parks_departments;

SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
JOIN parks_departments dept
	ON dept.department_id = sal.dept_id;

-- now notice when we did that, since it's an inner join it got rid of andy because he wasn't a part of any department

-- if we do a left join we would still include him because we are taking everything from the left table which is the salary table in this instance
SELECT *
FROM employee_demographics dem
INNER JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
LEFT JOIN parks_departments dept
	ON dept.department_id = sal.dept_id;