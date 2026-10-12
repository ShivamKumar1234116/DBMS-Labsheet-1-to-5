-- Q46
DELETE FROM employees e
WHERE e.is_active = FALSE
  AND e.salary < (
      SELECT AVG(e2.salary)
      FROM employees e2
      WHERE e2.dept_id = e.dept_id
  );
