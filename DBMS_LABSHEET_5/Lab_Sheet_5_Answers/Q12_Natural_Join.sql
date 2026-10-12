-- Q12. Natural Join
-- Use NATURAL JOIN to display employee names, DeptID, and department names. Do not write an ON condition.

SELECT e.EmpName, e.DeptID, d.DeptName
FROM Employees e
NATURAL JOIN Departments d;

-- Output / Observation:
-- +---------+--------+-------------------+
-- | EmpName | DeptID | DeptName          |
-- +---------+--------+-------------------+
-- | Aarav   | 10     | Computer Science  |
-- | Priya   | 20     | Pharmacy          |
-- | Rahul   | 10     | Computer Science  |
-- | Sneha   | 30     | Management        |
-- | Vikram  | 20     | Pharmacy          |
-- | Kabir   | 30     | Management        |
-- +---------+--------+-------------------+
