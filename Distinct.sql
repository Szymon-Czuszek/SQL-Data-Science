-- Retrieves unique cities where supplier locations are found from the Northwind database.
SELECT DISTINCT 
    c.CITY 
FROM 
    NORTHWIND.SUPPLIERS c;