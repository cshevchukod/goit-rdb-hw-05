USE goit_rdb_hw_03;
SELECT
    od.*,
    (SELECT customer_id
     FROM orders
     WHERE id = od.order_id) AS customer_id
FROM order_details od;