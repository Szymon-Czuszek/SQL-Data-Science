-- Show how profit for the product Tofu varies by day of the month across all years in the database.
SELECT
   EXTRACT(YEAR FROM o.ORDER_DATE) AS YEAR,
   EXTRACT(MONTH FROM o.ORDER_DATE) AS MONTH,
   EXTRACT(DAY FROM o.ORDER_DATE) AS DAY,
   SUM(od.UNIT_PRICE * od.QUANTITY - od.DISCOUNT) AS DAILY_PROFIT
FROM
   NORTHWIND.ORDERS o
JOIN
   NORTHWIND.ORDER_DETAILS od ON o.ORDER_ID = od.ORDER_ID
JOIN
   NORTHWIND.PRODUCTS p ON od.PRODUCT_ID = p.PRODUCT_ID
WHERE
   p.PRODUCT_NAME = 'Tofu'
GROUP BY
   EXTRACT(YEAR FROM o.ORDER_DATE),
   EXTRACT(MONTH FROM o.ORDER_DATE),
   EXTRACT(DAY FROM o.ORDER_DATE)
ORDER BY
   EXTRACT(YEAR FROM o.ORDER_DATE),
   EXTRACT(MONTH FROM o.ORDER_DATE),
   EXTRACT(DAY FROM o.ORDER_DATE);