-- Show the product with the highest unit price
SELECT *
FROM NORTHWIND.PRODUCTS
WHERE UNIT_PRICE = (SELECT MAX(UNIT_PRICE) FROM NORTHWIND.PRODUCTS);