-- Generate a summary of monthly sales for each customer in 2017
SELECT
   C.COMPANY_NAME,
   EXTRACT(MONTH FROM O.ORDER_DATE) AS Month,
   SUM(OD.QUANTITY * OD.UNIT_PRICE) AS Monthly_Sales_Value,
   SUM(SUM(OD.QUANTITY * OD.UNIT_PRICE)) OVER (PARTITION BY C.COMPANY_NAME ORDER BY EXTRACT(MONTH FROM O.ORDER_DATE)) AS Cumulative_Sales_Value
FROM
   NORTHWIND.CUSTOMERS C
INNER JOIN NORTHWIND.ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID
INNER JOIN NORTHWIND.ORDER_DETAILS OD ON O.ORDER_ID = OD.ORDER_ID
WHERE
   EXTRACT(YEAR FROM O.ORDER_DATE) = 2017
GROUP BY
   C.COMPANY_NAME, EXTRACT(MONTH FROM O.ORDER_DATE)
ORDER BY
   C.COMPANY_NAME, EXTRACT(MONTH FROM O.ORDER_DATE);