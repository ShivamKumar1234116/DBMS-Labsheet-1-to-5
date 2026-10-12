-- Q16. DISTINCT Departments
-- Display distinct department names that have at least one matching employee.

SELECT DISTINCT d.DeptName
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID
ORDER BY d.DeptName;

-- Output / Observation:
-- +-------------------+
-- | DeptName          |
-- +-------------------+
-- | Computer Science  |
-- | Management        |
-- | Pharmacy          |
-- +-------------------+
