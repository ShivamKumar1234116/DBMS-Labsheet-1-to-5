-- Q16: Transfer budget from dept 10 to dept 20 atomically
START TRANSACTION;
UPDATE departments
SET budget = budget - 10000.00
WHERE dept_id = 10;

UPDATE departments
SET budget = budget + 10000.00
WHERE dept_id = 20;

COMMIT;
