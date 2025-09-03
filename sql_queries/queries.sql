-- Top 5 Products by Revenue

SELECT ProductName,
SUM(Quantity*DiscountPrice) AS Revenue
FROM Sales
GROUP BY ProductName
ORDER BY Revenue DESC
LIMIT 10;

-- Monthly Revenue Trend

SELECT Month(InvoiceDate) AS Month,
SUM(Quantity*DiscountPrice) AS Revenue
FROM Sales
GROUP BY Month(InvoiceDate)
ORDER BY Month;

-- Seasonal Revenue

SELECT Season, SUM(Quantity*DiscountPrice) AS Revenue
FROM (
    SELECT 
      CASE 
        WHEN MONTH(InvoiceDate) IN (10,11,12) THEN 'Festive'
        WHEN MONTH(InvoiceDate) IN (1,2,3) THEN 'Winter'
        WHEN MONTH(InvoiceDate) IN (4,5,6) THEN 'Summer'
        ELSE 'Monsoon'
      END AS Season,
      Quantity,
      DiscountPrice
    FROM Sales
) AS sub
GROUP BY Season
ORDER BY Revenue DESC;

-- Brand by Revenue

SELECT Brand, SUM(Quantity*DiscountPrice) As Revenue
FROM Sales
GROUP BY Brand
ORDER BY Revenue DESC;





