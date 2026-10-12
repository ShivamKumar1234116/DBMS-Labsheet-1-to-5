-- Q19: Order workflow rollback when amount is below threshold
START TRANSACTION;
UPDATE orders
SET status = 'Shipped'
WHERE order_id = 5002;

-- Check total amount condition
-- SELECT total_amount FROM orders WHERE order_id = 5002;
-- If total_amount < 500 THEN ROLLBACK;
-- ELSE COMMIT;
ROLLBACK;
