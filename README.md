# Online Retail Revenue & Customer Analysis

## Project Overview
This project focuses on analyzing online retail transaction data using MySQL. The objective is to understand sales performance, customer purchasing behavior, product performance, and revenue distribution across different countries.

The analysis uses SQL queries to extract meaningful business insights from retail transaction data.

## Business Problem
An online retail company wants to understand its sales performance and customer behavior to improve business decisions.

The analysis aims to answer:
- Which products generate the highest revenue?
- Which countries generate the most sales?
- Who are the top spending customers?
- Which months generate the highest revenue?
- What is the average order value?
- Which products have the highest return activity?

### Important Columns
- InvoiceNo
- StockCode
- Description
- Quantity
- InvoiceDate
- UnitPrice
- CustomerID
- Country

## Tools & Technologies
- MySQL
- MySQL Workbench
- SQL

## Data Cleaning
- Checked for missing customer IDs.
- Identified cancelled invoices.
- Identified negative quantities and prices.
- Created a cleaned SQL view for valid sales transactions.
- Checked records for data consistency.

## SQL Concepts Used
- SELECT and DISTINCT
- WHERE
- ORDER BY
- Aggregate Functions (SUM, COUNT, AVG)
- GROUP BY

## Analysis Performed
1. Total Revenue Analysis
2. Total Orders Analysis
3. Customer Analysis
4. Top 10 Products by Revenue
5. Revenue by Country
6. Monthly Revenue Analysis
7. Average Order Value
8. Top Spending Customers
9. Best-Selling Products by Quantity
10. Returns and Cancellation Analysis

## Key Business Insights
The analysis helps identify:
- Highest revenue-generating products.
- Best-performing countries.
- Most valuable customers.
- Monthly sales trends.
- Products with higher return activity.

## Project Files

- Online Retail.csv
- sales_analysis.sql


## Conclusion
This project demonstrates the use of SQL for retail sales analysis, data cleaning, customer segmentation, and business performance evaluation.

It helps convert raw transaction data into meaningful business insights for better decision-making.
