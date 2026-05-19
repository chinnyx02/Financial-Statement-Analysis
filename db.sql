-- Create Database
CREATE DATABASE Financial_Statement_DB;

-- Use Database
USE Financial_Statement_DB;

-- Create Table
CREATE TABLE financial_statement (
    id INT PRIMARY KEY AUTO_INCREMENT,
    month VARCHAR(10),
    account VARCHAR(50),
    actual DECIMAL(12,2),
    budget DECIMAL(12,2),
    variance DECIMAL(12,2),
    department VARCHAR(50)
);

-- Insert January 2025 Data
INSERT INTO financial_statement 
(month, account, actual, budget, variance, department)
VALUES
('2025-01', 'Rent', 10000.00, 10000.00, 0.00, 'Admin'),
('2025-01', 'Salary', 50000.00, 50000.00, 0.00, 'HR'),
('2025-01', 'Revenue', 80000.00, 82000.00, -2000.00, 'Marketing'),
('2025-01', 'COGS', 90000.00, 87000.00, -3000.00, 'Operations'),
('2025-01', 'Revenue', 150000.00, 145000.00, 5000.00, 'Sales');

-- Insert February 2025 Data
INSERT INTO financial_statement 
(month, account, actual, budget, variance, department)
VALUES
('2025-02', 'Rent', 10000.00, 10000.00, 0.00, 'Admin'),
('2025-02', 'Salary', 50000.00, 50000.00, 0.00, 'HR'),
('2025-02', 'Revenue', 85000.00, 83000.00, 2000.00, 'Marketing'),
('2025-02', 'COGS', 95000.00, 90000.00, -5000.00, 'Operations'),
('2025-02', 'Revenue', 160000.00, 148000.00, 12000.00, 'Sales');

-- View All Data
SELECT * FROM financial_statement;

-- Total Actual Amount by Department
SELECT 
    department,
    SUM(actual) AS total_actual
FROM financial_statement
GROUP BY department;

-- Total Budget by Department
SELECT 
    department,
    SUM(budget) AS total_budget
FROM financial_statement
GROUP BY department;

-- Total Variance by Department
SELECT 
    department,
    SUM(variance) AS total_variance
FROM financial_statement
GROUP BY department;

-- Monthly Financial Summary
SELECT
    month,
    SUM(actual) AS total_actual,
    SUM(budget) AS total_budget,
    SUM(variance) AS total_variance
FROM financial_statement
GROUP BY month;


-- Revenue Analysis
SELECT *
FROM financial_statement
WHERE account = 'Revenue';

-- Negative Variance Records
SELECT *
FROM financial_statement
WHERE variance < 0;
