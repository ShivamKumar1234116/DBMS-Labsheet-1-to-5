-- Q6: Roll back an uncommitted delete
START TRANSACTION;
DELETE FROM employees WHERE emp_id = 105;
ROLLBACK;
