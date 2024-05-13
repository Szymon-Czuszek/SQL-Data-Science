-- Find the beverage with the least quantity in stock
SELECT *
FROM NORTHWIND.PRODUCTS
WHERE CATEGORY_ID = (SELECT CATEGORY_ID FROM NORTHWIND.CATEGORIES WHERE CATEGORY_NAME = 'Beverages')
AND UNITS_IN_STOCK = (SELECT MIN(UNITS_IN_STOCK) FROM NORTHWIND.PRODUCTS WHERE CATEGORY_ID = (SELECT CATEGORY_ID FROM NORTHWIND.CATEGORIES WHERE CATEGORY_NAME = 'Beverages'));