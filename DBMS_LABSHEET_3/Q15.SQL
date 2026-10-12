-- Q15: ALTER TABLE inside an uncommitted transaction
START TRANSACTION;
UPDATE employees SET salary = 85000.00 WHERE emp_id = 101;
ALTER TABLE employees ADD COLUMN temp_note VARCHAR(255);
ROLLBACK;
