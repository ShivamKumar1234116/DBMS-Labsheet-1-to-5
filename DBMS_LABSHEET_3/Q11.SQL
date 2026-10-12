-- Q11: Grant DELETE on orders to dev_user@localhost
USE company_db;
GRANT DELETE ON company_db.orders TO 'dev_user'@'localhost';
