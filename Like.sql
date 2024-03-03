-- Show companies whose names start with the letter B
SELECT
    *
FROM
    NORTHWIND.SUPPLIERS
WHERE
    COMPANY_NAME LIKE 'B%';