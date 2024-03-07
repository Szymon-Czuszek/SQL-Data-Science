-- Show the product name and the quantity needed to purchase in order to exceed the reorder level
SELECT PRODUCT_NAME, (REORDER_LEVEL - UNITS_IN_STOCK) AS Quantity_Needed
FROM NORTHWIND.PRODUCTS
WHERE UNITS_IN_STOCK < REORDER_LEVEL;