/* Pokaż nazwę towaru oraz adres sprzedawcy oraz ilość towarów, które musimy zakupić, aby stan na magazynie przekroczył minimalna wartość o 100 jednostek. /*
SELECT
   p.PRODUCT_NAME,
   s.ADDRESS,
   (REORDER_LEVEL - UNITS_IN_STOCK + 100) AS Quantity_Needed
FROM
   NORTHWIND.PRODUCTS p
INNER JOIN
   NORTHWIND.SUPPLIERS s ON p.SUPPLIER_ID = s.SUPPLIER_ID
WHERE
   UNITS_IN_STOCK < REORDER_LEVEL;