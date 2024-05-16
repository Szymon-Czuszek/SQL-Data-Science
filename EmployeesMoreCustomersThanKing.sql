-- Determine which employees serve more customers than the employee with the surname "King"
SELECT
   e.EMPLOYEE_ID,
   e.LASTNAME,
   e.FIRSTNAME,
   COUNT(DISTINCT o.CUSTOMER_ID) AS CUSTOMER_COUNT
FROM
   NORTHWIND.ORDERS o
JOIN
   NORTHWIND.EMPLOYEES e ON o.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE
   e.LASTNAME != 'King' -- Comment this line and one above to see how much served clients King has
GROUP BY
   e.EMPLOYEE_ID, e.LASTNAME, e.FIRSTNAME
HAVING
   COUNT(DISTINCT o.CUSTOMER_ID) >= (
       SELECT COUNT(DISTINCT CUSTOMER_ID)
       FROM NORTHWIND.ORDERS
       WHERE EMPLOYEE_ID = (
           SELECT EMPLOYEE_ID
           FROM NORTHWIND.EMPLOYEES
           WHERE LASTNAME = 'King'
       )
   )
ORDER BY
   CUSTOMER_COUNT DESC;