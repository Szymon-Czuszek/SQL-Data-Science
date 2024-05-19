-- Retrieve the top 3 suppliers by the total value of products supplied in 2018
SELECT
    s.SUPPLIER_ID,
    s.COMPANY_NAME,
    SUM(od.UNIT_PRICE * od.QUANTITY) AS TotalValue
FROM
    NORTHWIND.ORDERS o
JOIN
    NORTHWIND.ORDER_DETAILS od ON o.ORDER_ID = od.ORDER_ID
JOIN
    NORTHWIND.PRODUCTS p ON od.PRODUCT_ID = p.PRODUCT_ID
JOIN
    NORTHWIND.SUPPLIERS s ON p.SUPPLIER_ID = s.SUPPLIER_ID
WHERE
    EXTRACT(YEAR FROM o.ORDER_DATE) = 2018
GROUP BY
    s.SUPPLIER_ID, s.COMPANY_NAME
ORDER BY
    TotalValue DESC
FETCH FIRST 3 ROWS ONLY;