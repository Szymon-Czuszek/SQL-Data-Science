-- Show information about suppliers sorted by city.
SELECT 
    c.* 
FROM 
    NORTHWIND.SUPPLIERS c
ORDER BY 
    c.CITY;