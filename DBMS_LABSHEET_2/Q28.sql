-- Q28
SELECT dept_id, SUM(salary) AS total_salary_expense
FROM employees
GROUP BY dept_id;
