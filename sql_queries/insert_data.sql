-- Import CSV into Sales

LOAD DATA INFILE 'C:/ECOMMERCE_SEASONAL_DATASET.csv'
INTO TABLE sales
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(InvoiceDate, Month, Season, ProductName, Brand, Price, DiscountPrice, Quantity, Revenue);