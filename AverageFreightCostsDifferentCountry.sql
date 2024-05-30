-- Calculate the average freight costs for companies that purchased goods but had the delivery country different from the country where the company is located
SELECT
   AVG(FREIGHT) AS AVERAGE_FREIGHT_COST
FROM
   NORTHWIND.ORDERS o
JOIN
   NORTHWIND.CUSTOMERS c ON o.CUSTOMER_ID = c.CUSTOMER_ID
WHERE
   o.SHIP_COUNTRY != c.COUNTRY;