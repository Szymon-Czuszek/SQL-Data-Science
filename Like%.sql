-- Show addresses from suppliers where the address starts with '22'
SELECT c.ADDRESS FROM NORTHWIND.SUPPLIERS c
WHERE c.ADDRESS like '22%';