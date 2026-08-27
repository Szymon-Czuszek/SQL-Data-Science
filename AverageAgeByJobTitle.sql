-- Calculate the average age of employees for each job title.
SELECT
    TITLE,

    -- Calculate each employee's age in completed years:
    -- 1. MONTHS_BETWEEN calculates the number of months between today
    --    and the employee's birth date.
    -- 2. Divide by 12 to convert months into years.
    -- 3. TRUNC removes the fractional part, leaving completed years.
    -- 4. AVG calculates the average age for all employees with the same title.
    -- 5. ROUND rounds the resulting average to two decimal places.
    ROUND(AVG(TRUNC(MONTHS_BETWEEN(SYSDATE, BIRTHDATE) / 12)), 2) AS AVG_AGE

FROM
    NORTHWIND.EMPLOYEES

-- Group employees by job title so that the average age
-- is calculated separately for each title.
GROUP BY
    TITLE;
