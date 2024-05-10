-- Determine whether there are employees who will celebrate their 20th, 25th, 30th, or 40th work anniversaries in the upcoming year.
WITH Future_Service_Age AS (
   SELECT EMPLOYEE_ID,
          LASTNAME,
          FIRSTNAME,
          HIREDATE,
          TRUNC(MONTHS_BETWEEN(ADD_MONTHS(SYSDATE, 12), HIREDATE) / 12) AS FUTURE_SERVICE_YEARS
   FROM NORTHWIND.EMPLOYEES
)
SELECT *
FROM (
   SELECT EMPLOYEE_ID,
          LASTNAME,
          FIRSTNAME,
          FUTURE_SERVICE_YEARS,
          CASE WHEN FUTURE_SERVICE_YEARS IN (20, 25, 30, 40) THEN 'TRUE' ELSE 'FALSE' END AS ANY_ANNIVERSARY_MET_IN_YEAR
   FROM Future_Service_Age
)