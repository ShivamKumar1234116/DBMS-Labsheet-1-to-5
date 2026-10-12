-- Q29: Batch insert recovery with savepoints
START TRANSACTION;
INSERT INTO orders (order_id, customer_name, order_date, total_amount, status)
VALUES (5008, 'Delta Logistics', '2024-02-01', 780.00, 'Pending');
SAVEPOINT sp_5008;

INSERT INTO orders (order_id, customer_name, order_date, total_amount, status)
VALUES (5009, 'Epsilon Stores', '2024-02-03', 1500.00, 'Pending');

-- If order 5009 fails business rules:
-- ROLLBACK TO SAVEPOINT sp_5008;
COMMIT;
