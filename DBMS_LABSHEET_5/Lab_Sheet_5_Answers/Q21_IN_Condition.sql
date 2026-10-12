-- Q21. IN Condition
-- Display employees working in either Computer Science or Pharmacy.

SELECT e.EmpName, d.DeptName
FROM Employees e
INNER JOIN Departments d
ON e.DeptID = d.DeptID
WHERE d.DeptName IN ('Computer Science', 'Pharmacy');

-- Output / Observation:
-- +---------+-------------------+
-- | EmpName | DeptName          |
-- +---------+-------------------+
-- | Aarav   | Computer Science  |
-- | Priya   | Pharmacy          |
-- | Rahul   | Computer Science  |
-- | Vikram  | Pharmacy          |
-- +---------+-------------------+
