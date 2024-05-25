-- Provide the names of companies that placed orders one month before the oldest order
SELECT DISTINCT
   c.COMPANY_NAME
FROM
   NORTHWIND.ORDERS o
JOIN
   NORTHWIND.CUSTOMERS c ON o.CUSTOMER_ID = c.CUSTOMER_ID
WHERE
   o.ORDER_DATE = (
       SELECT MIN(ORDER_DATE) - INTERVAL '1' MONTH
       FROM NORTHWIND.ORDERS
   );