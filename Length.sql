-- Show companies whose names are longer than 10 characters. (LENGTH)
SELECT c.* FROM NORTHWIND.SUPPLIERS c
WHERE LENGTH(c.COMPANY_NAME) > 10;