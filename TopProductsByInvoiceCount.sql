-- Retrieve the top 3 products by the number of invoices
SELECT
    p.PRODUCT_ID,
    p.PRODUCT_NAME,
    COUNT(*) AS InvoiceCount
FROM
    NORTHWIND.ORDER_DETAILS od
JOIN
    NORTHWIND.PRODUCTS p ON od.PRODUCT_ID = p.PRODUCT_ID
GROUP BY
    p.PRODUCT_ID, p.PRODUCT_NAME
ORDER BY
    InvoiceCount DESC
FETCH FIRST 3 ROWS ONLY;