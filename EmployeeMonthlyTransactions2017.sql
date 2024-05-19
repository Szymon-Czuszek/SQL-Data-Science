-- Summarize monthly transaction counts for each employee in 2017 and calculate cumulative transactions
SELECT
   Employee_Lastname,
   Employee_Firstname,
   Month,
   Transactions_Count,
   SUM(Transactions_Count) OVER (PARTITION BY Employee_Lastname ORDER BY Month) AS Cumulative_Transactions
FROM (
   SELECT
       E.LASTNAME AS Employee_Lastname,
       E.FIRSTNAME AS Employee_Firstname,
       EXTRACT(MONTH FROM O.ORDER_DATE) AS Month,
       COUNT(*) AS Transactions_Count
   FROM
       NORTHWIND.EMPLOYEES E
   JOIN NORTHWIND.ORDERS O ON E.EMPLOYEE_ID = O.EMPLOYEE_ID
   WHERE
       EXTRACT(YEAR FROM O.ORDER_DATE) = 2017
   GROUP BY
       E.LASTNAME, E.FIRSTNAME, EXTRACT(MONTH FROM O.ORDER_DATE)
)
ORDER BY
   Employee_Lastname, Month;