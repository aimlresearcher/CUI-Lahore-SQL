-- Create Table

-- Create a sample table
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Department NVARCHAR(50),
    Salary INT
);
-- Insert Data:

-- Insert some sample data
INSERT INTO Employee VALUES (1, 'John', 'Doe', 'IT', 60000);
INSERT INTO Employee VALUES (2, 'Jane', 'Smith', 'HR', 55000);
INSERT INTO Employee VALUES (3, 'Bob', 'Johnson', 'Finance', 70000);
INSERT INTO Employee VALUES (4, 'Alice', 'Williams', 'IT', 62000);
-- Vertical Subset (Selecting Specific Columns):
-- Vertical subset with specific columns
SELECT EmployeeID, FirstName, Department
FROM Employee;
-- This query selects only the EmployeeID, FirstName, and Department columns from the Employee table.

-- Horizontal Subset (Filtering Rows):
-- Horizontal subset based on a condition
SELECT *
FROM Employee
WHERE Department = 'IT';
-- This query selects all columns for employees who work in the 'IT' department.

-- Vertical and Horizontal Subset:
-- Vertical and horizontal subset
SELECT FirstName, LastName, Salary
FROM Employee
WHERE Salary > 60000;
-- This query selects the FirstName, LastName, and Salary columns for employees whose salary is greater than 60000.
-- Adjust the table and column names according to your specific needs. Make sure to run these queries in a SQL Server environment.