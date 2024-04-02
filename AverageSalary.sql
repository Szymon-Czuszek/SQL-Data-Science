-- Pokaż, jaka jest średnia płaca w firmie. (ROUND)
SELECT
    ROUND(AVG(e.salary), 2) as avg_salary
FROM
    NORTHWIND.EMPLOYEES e