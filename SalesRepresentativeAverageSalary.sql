/* Pokaż średnie zarobki na stanowisku Przedstawiciel Handlowy. Dodaj symbol dolara do wyniku. (to_char(wartość,’$9,999.99’)). Dodaj symbol lokalnej waluty. (to_char(wartość,’L9,999.99’)). */
SELECT
   TO_CHAR(AVG(SALARY), '$9,999.99') AS Average_Salary_Dollar,
   TO_CHAR(AVG(SALARY), 'L9,999.99') AS Average_Salary_Local_Currency
FROM
   NORTHWIND.EMPLOYEES
WHERE
   TITLE = 'Sales Representative';