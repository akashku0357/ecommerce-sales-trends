CREATE DATABASE Ecommerce;
USE Ecommerce;

-- Create Sales Table

CREATE TABLE Sales (
	id INT AUTO_INCREMENT PRIMARY KEY,
    InvoiceDate DATE NOT NULL,
    Month VARCHAR(20),              
    Season VARCHAR(20) NOT NULL,    
    ProductName VARCHAR(150) NOT NULL,
    Brand VARCHAR(50),
    Price DECIMAL(10,2) NOT NULL,
    DiscountPrice DECIMAL(10,2),    
    Quantity DECIMAL(10,2) NOT NULL, 
    Revenue DECIMAL(10,5) NOT NULL
);






