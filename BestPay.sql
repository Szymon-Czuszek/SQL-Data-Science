-- Show the three highest paid people in the company.
SELECT
   FIRSTNAME,
   LASTNAME,
   SALARY
FROM
   NORTHWIND.EMPLOYEES
ORDER BY
   SALARY DESC
FETCH FIRST 3 ROWS ONLY;