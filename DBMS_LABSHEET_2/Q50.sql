-- Q50
UPDATE orders
SET status = CASE
    WHEN total_amount > 1000 THEN 'Completed'
    WHEN total_amount >= 500 AND total_amount <= 1000 THEN 'Shipped'
    ELSE 'Pending'
END;
