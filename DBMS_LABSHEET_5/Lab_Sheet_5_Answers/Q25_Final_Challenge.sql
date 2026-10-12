-- Q25. Final Challenge
-- Use an equality-based INNER JOIN to find departments whose total employee salary is greater than 100000.

SELECT d.DeptName, SUM(e.Salary) AS TotalSalary
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID
GROUP BY d.DeptName
HAVING SUM(e.Salary) > 100000
ORDER BY TotalSalary DESC;

-- Output / Observation:
-- +-------------------+------------+
-- | DeptName          | TotalSalary |
-- +-------------------+------------+
-- | Management        | 134000.00  |
-- | Pharmacy          | 127000.00  |
-- | Computer Science  | 113000.00  |
-- +-------------------+------------+
