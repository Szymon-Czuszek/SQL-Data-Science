-- For each product, provide the maximum quantity of ordered units
SELECT
   PRODUCT_ID,
   MAX(QUANTITY) AS MAX_ORDERED_UNITS
FROM
   NORTHWIND.ORDER_DETAILS
GROUP BY
   PRODUCT_ID;