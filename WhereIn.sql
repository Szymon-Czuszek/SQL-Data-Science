-- Show companies from London and Osaka.
SELECT
   INITCAP(UPPER(c.COMPANY_NAME)) AS Formatted_Company_Name
FROM
   NORTHWIND.SUPPLIERS c
WHERE
   UPPER(c.CITY) IN ('LONDON', 'OSAKA');