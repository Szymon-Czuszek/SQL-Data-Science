-- Show products supplied by Exotic Liquids.
SELECT
   p.PRODUCT_NAME
FROM
   NORTHWIND.PRODUCTS p
JOIN
   NORTHWIND.SUPPLIERS s ON p.SUPPLIER_ID = s.SUPPLIER_ID
WHERE
   UPPER(s.COMPANY_NAME) = 'EXOTIC LIQUIDS';