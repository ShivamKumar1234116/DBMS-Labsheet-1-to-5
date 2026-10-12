-- Q32
SELECT *
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
