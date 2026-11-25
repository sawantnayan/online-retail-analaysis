CREATE DATABASE online_retail;
use online_retail;

CREATE TABLE retail_sales(
	invoice_no VARCHAR(250),
    stock_code VARCHAR(250),
    description VARCHAR(250),
    quantity INT,
    invoice_date DATE,
    unit_price DECIMAL(10,2),
    customer_id INT,
    country VARCHAR(255)
);

-- DATA CLEANING

SELECT * FROM retail_sales
LIMIT 10;

SELECT COUNT(*) 
FROM retail_sales;

SELECT COUNT(*)
FROM retail_sales
WHERE customer_id IS NULL;

SELECT * FROM retail_sales
WHERE quantity < 0;

-- CLEANED VIEW 

CREATE VIEW cleaned_retail_sales AS
SELECT * FROM retail_sales
WHERE quantity > 0
	AND unit_price > 0
    AND invoice_no NOT LIKE 'c%'; 

SELECT * FROM cleaned_retail_sales;


--  SALES ANALYSIS

-- Total revenue of sales

SELECT SUM(quantity * unit_price) AS total_revenue
FROM cleaned_retail_sales;

-- Total Orders

SELECT COUNT(DISTINCT(invoice_no)) AS total_orders
FROM cleaned_retail_sales;

-- Total customers

SELECT COUNT(DISTINCT(customer_id)) AS total_customers
FROM cleaned_retail_sales;

-- Top 10 products by revenue

SELECT description, SUM(quantity * unit_price) AS revenue
FROM cleaned_retail_sales
GROUP BY description
ORDER BY revenue DESC
LIMIT 10;

-- Country Revenue

SELECT country, SUM(quantity * unit_price) AS revenue
FROM cleaned_retail_sales
GROUP BY country
ORDER BY revenue DESC;

-- Monthly Revenue

SELECT
    DATE_FORMAT(invoice_date, '%Y-%m') AS month,
    SUM(quantity * unit_price) AS revenue
FROM cleaned_retail_sales
GROUP BY month
ORDER BY month;

-- Average Order

SELECT
    SUM(quantity * unit_price)
    / COUNT(DISTINCT invoice_no) AS average_order_value
FROM cleaned_retail_sales;

-- Customer Spending on Orders

SELECT
    customer_id,
    SUM(quantity * unit_price) AS total_spending
FROM cleaned_retail_sales
WHERE customer_id IS NOT NULL
GROUP BY customer_id
ORDER BY total_spending DESC
LIMIT 10;

-- Products with highest quantity sold

SELECT
    description,
    SUM(quantity) AS total_quantity
FROM cleaned_retail_sales
GROUP BY description
ORDER BY total_quantity DESC
LIMIT 10;

-- Return or Cancellation Records 

SELECT
    invoice_no,
    description,
    quantity,
    unit_price
FROM retail_sales
WHERE quantity < 0
   OR invoice_no LIKE 'C%';
