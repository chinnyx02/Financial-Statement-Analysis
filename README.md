# Financial Statement Analysis SQL Database

## Project Overview
This project contains a structured SQL database designed for storing and analyzing financial statement data for different departments within a business organization.

The dataset includes:
- Actual financial values
- Budgeted financial values
- Variance analysis
- Departmental financial records
- Monthly financial tracking

The project demonstrates how SQL can be used for:
- Financial reporting
- Budget analysis
- Variance analysis
- Department performance tracking
- Business intelligence preparation

---

# Database Name
Financial_Statement_DB

---

# Table Name
financial_statement

---

# Technologies Used
- SQL
- MySQL

---

# Dataset Structure

| Column Name | Data Type | Description |
|-------------|-----------|-------------|
| id | INT | Unique identifier |
| month | VARCHAR(10) | Financial month |
| account | VARCHAR(50) | Financial account type |
| actual | DECIMAL(12,2) | Actual financial amount |
| budget | DECIMAL(12,2) | Budgeted amount |
| variance | DECIMAL(12,2) | Difference between actual and budget |
| department | VARCHAR(50) | Department name |

---

# Features
- Create financial database
- Insert monthly financial data
- Analyze departmental performance
- Compare budget vs actual values
- Identify negative variances
- Generate monthly summaries

---

# SQL Operations Included
- CREATE DATABASE
- CREATE TABLE
- INSERT INTO
- SELECT Queries
- GROUP BY Analysis
- Financial Aggregation
- Variance Tracking

---

RE variance < 0;
