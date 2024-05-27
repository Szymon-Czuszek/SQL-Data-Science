-- Określ, który pracownik wykonał najwięcej transakcji sprzedaży w danym roku.
SELECT
   TRANSACTION_YEAR,
   EMPLOYEE_ID,
   LASTNAME,
   FIRSTNAME,
   TRANSACTION_COUNT
FROM (
   SELECT
       EXTRACT(YEAR FROM o.ORDER_DATE) AS TRANSACTION_YEAR,
       e.EMPLOYEE_ID,
       e.LASTNAME,
       e.FIRSTNAME,
       COUNT(*) AS TRANSACTION_COUNT,
       ROW_NUMBER() OVER (PARTITION BY EXTRACT(YEAR FROM o.ORDER_DATE) ORDER BY COUNT(*) DESC) AS RN
   FROM
       NORTHWIND.ORDERS o
   JOIN
       NORTHWIND.EMPLOYEES e ON o.EMPLOYEE_ID = e.EMPLOYEE_ID
   GROUP BY
       EXTRACT(YEAR FROM o.ORDER_DATE), e.EMPLOYEE_ID, e.LASTNAME, e.FIRSTNAME
)
WHERE RN = 1;