-- Pokaż, jaka jest najmniejsza, największa i średnia płaca w firmie.
SELECT
   MIN(SALARY) AS Min_Salary,
   MAX(SALARY) AS Max_Salary,
   ROUND(AVG(SALARY), 2) AS Average_Salary
FROM NORTHWIND.EMPLOYEES;