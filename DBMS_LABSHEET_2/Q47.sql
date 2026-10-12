-- Q47
SELECT d.dept_name,
       (
           SELECT COUNT(*)
           FROM employees e
           WHERE e.dept_id = d.dept_id
       ) AS total_employee_count
FROM departments d;
