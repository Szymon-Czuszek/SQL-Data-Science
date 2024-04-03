-- Pokaz liczbę pracowników według miast w których mieszkają.
SELECT
    e.CITY, COUNT(*) AS liczba_pracownikow
FROM
    NORTHWIND.EMPLOYEES e
GROUP BY
    e.CITY;