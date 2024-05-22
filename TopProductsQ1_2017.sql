-- Retrieve the top 3 products by sales value for the first quarter of 2017
SELECT p.PRODUCT_ID,
       p.PRODUCT_NAME,
       SUM(od.UNIT_PRICE * od.Quantity) AS SalesValue
FROM NORTHWIND.ORDERS o
JOIN NORTHWIND.ORDER_DETAILS od ON o.ORDER_ID = od.ORDER_ID
JOIN NORTHWIND.PRODUCTS p ON od.PRODUCT_ID = p.PRODUCT_ID
WHERE EXTRACT(YEAR FROM o.ORDER_DATE) = 2017
AND EXTRACT(MONTH FROM o.ORDER_DATE) BETWEEN 1 AND 3
GROUP BY p.PRODUCT_ID, p.PRODUCT_NAME
ORDER BY SalesValue DESC
FETCH FIRST 3 ROWS ONLY;