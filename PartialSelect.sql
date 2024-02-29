-- Show the names of companies, addresses, and cities of available suppliers.
SELECT 
    c.COMPANY_NAME, 
    c.ADDRESS, 
    c.CITY 
FROM 
    NORTHWIND.SUPPLIERS c;