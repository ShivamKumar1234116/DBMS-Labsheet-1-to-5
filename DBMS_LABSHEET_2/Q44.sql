-- Q44
SELECT MIN(salary) AS third_highest_salary
FROM (
    SELECT DISTINCT salary
    FROM employees
    ORDER BY salary DESC
    LIMIT 3
) AS sub;
