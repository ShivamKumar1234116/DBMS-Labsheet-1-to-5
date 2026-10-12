-- Q42
SELECT d.dept_id, d.dept_name
FROM departments d
WHERE (
    SELECT AVG(e.salary)
    FROM employees e
    WHERE e.dept_id = d.dept_id
) > (
    SELECT AVG(salary)
    FROM employees
);
