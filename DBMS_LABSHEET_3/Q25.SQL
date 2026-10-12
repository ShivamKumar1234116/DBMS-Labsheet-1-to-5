-- Q25: Cancel order and refund dept 20 budget
START TRANSACTION;
UPDATE orders
SET status = 'Cancelled'
WHERE order_id = 5002;

UPDATE departments
SET budget = budget + 450.00
WHERE dept_id = 20;

COMMIT;
