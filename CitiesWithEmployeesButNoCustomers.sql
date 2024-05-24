-- Provide cities where our employees live but where no customer of ours resides
SELECT DISTINCT
   e.CITY
FROM
   NORTHWIND.EMPLOYEES e
LEFT JOIN
   NORTHWIND.CUSTOMERS c ON e.CITY = c.CITY
WHERE
   c.CITY IS NULL;