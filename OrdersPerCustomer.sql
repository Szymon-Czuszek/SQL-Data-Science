-- Show the number of orders for each customer.
SELECT
   CUSTOMER_ID,
   COUNT(*) AS NUM_ORDERS
FROM
   NORTHWIND.ORDERS
GROUP BY
   CUSTOMER_ID;