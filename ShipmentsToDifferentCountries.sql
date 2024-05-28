-- Determine the number of shipment transactions that were delivered to countries different from the country of origin of the ordering form
SELECT
   COUNT(*) AS SHIPMENT_COUNT
FROM
   NORTHWIND.ORDERS o
JOIN
   NORTHWIND.CUSTOMERS c ON o.CUSTOMER_ID = c.CUSTOMER_ID
JOIN
   NORTHWIND.SHIPPERS s ON o.SHIP_VIA = s.SHIPPER_ID
WHERE
   o.SHIPPED_DATE IS NOT NULL
   AND o.SHIP_COUNTRY != c.COUNTRY;