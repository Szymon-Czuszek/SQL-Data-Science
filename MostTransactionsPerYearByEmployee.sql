-- Retrieve the age, first name, last name, number of transactions, and age of the employee who conducted the most transactions in each year
SELECT
   TRANSACTION_YEAR,
   FIRSTNAME,
   LASTNAME,
   TRANSACTION_COUNT,
   AGE
FROM (
   SELECT
       COUNT(o.ORDER_ID) AS TRANSACTION_COUNT,
       EXTRACT(YEAR FROM o.ORDER_DATE) AS TRANSACTION_YEAR,
       e.FIRSTNAME,
       e.LASTNAME,
       ROUND(MONTHS_BETWEEN(SYSDATE, e.BIRTHDATE) / 12) AS AGE,
       ROW_NUMBER() OVER (PARTITION BY EXTRACT(YEAR FROM o.ORDER_DATE) ORDER BY COUNT(o.ORDER_ID) DESC) AS RN
   FROM
       NORTHWIND.ORDERS o
   JOIN
       NORTHWIND.EMPLOYEES e ON o.EMPLOYEE_ID = e.EMPLOYEE_ID
   GROUP BY
       EXTRACT(YEAR FROM o.ORDER_DATE),
       e.FIRSTNAME,
       e.LASTNAME,
       e.BIRTHDATE
)
WHERE RN = 1;