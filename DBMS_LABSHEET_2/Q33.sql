-- Q33
SELECT e.*
FROM employees e
JOIN departments d
  ON e.dept_id = d.dept_id
WHERE d.location = 'Building A';
