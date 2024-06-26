-- Find products with the least quantity in stock
SELECT *
FROM NORTHWIND.PRODUCTS
WHERE UNITS_IN_STOCK = (SELECT MIN(UNITS_IN_STOCK) FROM NORTHWIND.PRODUCTS);