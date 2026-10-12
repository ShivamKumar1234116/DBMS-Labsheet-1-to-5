-- Q9. Theta Join – Salary Range
-- Assign each employee to the correct salary grade using >= and <= in the join condition.

SELECT e.EmpName, e.Salary, sg.Grade
FROM Employees e
JOIN SalaryGrades sg
ON e.Salary >= sg.MinSalary AND e.Salary <= sg.MaxSalary;

-- Output / Observation:
-- +---------+-----------+-------+
-- | EmpName | Salary    | Grade |
-- +---------+-----------+-------+
-- | Rahul   | 48000.00  | G1    |
-- | Aarav   | 65000.00  | G2    |
-- | Vikram  | 55000.00  | G2    |
-- | Priya   | 72000.00  | G3    |
-- | Neha    | 80000.00  | G3    |
-- | Sneha   | 91000.00  | G4    |
-- | Kabir   | 43000.00  | G1    |
-- +---------+-----------+-------+
