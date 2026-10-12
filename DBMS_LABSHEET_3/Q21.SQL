-- Q21: Salary increase and budget check with savepoint
START TRANSACTION;
UPDATE employees
SET salary = salary * 1.15
WHERE dept_id = 10;

SAVEPOINT sp_salary_done;

UPDATE departments
SET budget = budget + 50000.00
WHERE dept_id = 10;

-- If budget > 520000.00 THEN ROLLBACK TO SAVEPOINT sp_salary_done;
COMMIT;
