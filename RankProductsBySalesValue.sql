-- Retrieve the ranking of products by sales value
SELECT
    RANK() OVER (ORDER BY SUM(od.UNIT_PRICE * od.Quantity) DESC) AS Ranking,
    SUM(od.UNIT_PRICE * od.Quantity) AS SalesValue,
    p.PRODUCT_NAME
FROM
    NORTHWIND.ORDERS o
JOIN
    NORTHWIND.ORDER_DETAILS od ON o.ORDER_ID = od.ORDER_ID
JOIN
    NORTHWIND.PRODUCTS p ON od.PRODUCT_ID = p.PRODUCT_ID
GROUP BY
    p.PRODUCT_ID, p.PRODUCT_NAME
ORDER BY
    SalesValue DESC;