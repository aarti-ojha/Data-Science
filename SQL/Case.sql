-- Case Statements

-- A Case Statement allows you to add logic to your Select Statement, sort of like an if else statement in other programming languages or even things like Excel
SELECT first_name , last_name , age,
CASE
	WHEN age<=30 THEN 'Young'
    WHEN age BETWEEN 31 AND 50 THEN 'Old'
    WHEN age >=50 THEN "On Death's Door"
END AS Age_Bracket
FROM employee_demographics;
-- Pawnee Council sent out a memo of their bonus and pay increase structure so we need to follow it
-- Basically if they make less than 45k then they get a 5% raise - very generous
-- if they make more than 45k they get a 7% raise
-- they get a bonus of 10% if they work for the Finance Department

SELECT first_name, last_name, salary,
CASE
   WHEN salary < 45000 THEN salary * 1.05
   WHEN salary > 45000 THEN salary * 1.07
END AS New_Salary ,
CASE
   WHEN dept_id = 6 THEN salary * 0.10
END AS Bonus
FROM employee_salary;
