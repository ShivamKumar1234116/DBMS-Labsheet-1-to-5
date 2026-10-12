-- Q22: Exclusive lock using FOR UPDATE before update
START TRANSACTION;
SELECT * FROM employees WHERE emp_id = 101 FOR UPDATE;
UPDATE employees
SET salary = 88000.00
WHERE emp_id = 101;
COMMIT;
