-- Sprawdź czy data urodzenia pracownia nie jest większa od daty zatrudnienia.
SELECT *
FROM NORTHWIND.EMPLOYEES
WHERE BIRTHDATE > HIREDATE;