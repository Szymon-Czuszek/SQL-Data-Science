-- Określ, w jakim dniu roku 2017 firma zanotowała największy zysk.
SELECT
   TO_DATE(SUBSTR(o.ORDER_DATE, 1, 10), 'YYYY-MM-DD') AS ORDER_DATE,
   SUM((od.UNIT_PRICE - od.UNIT_PRICE * od.DISCOUNT) * od.QUANTITY) AS PROFIT
FROM
   NORTHWIND.ORDERS o
JOIN
   NORTHWIND.ORDER_DETAILS od ON o.ORDER_ID = od.ORDER_ID
WHERE
   o.ORDER_DATE BETWEEN TO_DATE('2017-01-01', 'YYYY-MM-DD') AND TO_DATE('2017-12-31', 'YYYY-MM-DD')
GROUP BY
   TO_DATE(SUBSTR(o.ORDER_DATE, 1, 10), 'YYYY-MM-DD')
ORDER BY
   PROFIT DESC
FETCH FIRST 1 ROW ONLY;