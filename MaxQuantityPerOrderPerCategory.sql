-- Provide the maximum quantity of ordered products per order for each product category
SELECT
   p.CATEGORY_ID,
   MAX(od.QUANTITY) AS MAX_ORDERED_UNITS_PER_ORDER
FROM
   NORTHWIND.ORDER_DETAILS od
JOIN
   NORTHWIND.PRODUCTS p ON od.PRODUCT_ID = p.PRODUCT_ID
GROUP BY
   p.CATEGORY_ID;