-- Retrieve all columns for all customers:
SELECT * FROM Customers;

-- Retrieve only the company name and contact name for all customers:
SELECT CustomerID,CompanyName,ContactName FROM Customers;

-- Retrieve distinct countries from the customers:
SELECT DISTINCT Country FROM Customers;

-- Retrieve customers from a specific country (e.g., USA):
SELECT * FROM Customers WHERE Country = 'USA';

-- Retrieve customers from a specific city (e.g., London):
SELECT * FROM Customers WHERE City = 'London';

-- Retrieve customers from a specific region (e.g., WA):
SELECT * FROM Customers WHERE Region = 'WA';

-- Retrieve customers with a specific postal code (e.g., 98052):
SELECT * FROM Customers WHERE PostalCode = '98052';

-- Retrieve customers whose contact title is 'Owner':
SELECT * FROM Customers WHERE ContactTitle = 'Owner';

-- Retrieve customers whose contact title is not 'Owner':
SELECT * FROM Customers WHERE ContactTitle <> 'Owner';

-- Retrieve customers sorted by company name in ascending order:
SELECT * FROM Customers ORDER BY CompanyName ASC;

-- Retrieve customers sorted by contact name in descending order:
SELECT * FROM Customers ORDER BY ContactName DESC;

-- Count the number of customers in the table:
SELECT COUNT(*) FROM Customers;

-- Retrieve customers with a specific fax number (excluding NULL values):
SELECT * FROM Customers WHERE Fax IS NOT NULL;

-- Retrieve customers with a specific phone number (including NULL values):
SELECT * FROM Customers WHERE Phone IS NULL;

-- Retrieve customers with a specific contact name (case-insensitive):
SELECT * FROM Customers WHERE LOWER(ContactName) = 'john smith';

-- Retrieve customers with a specific company name using the LIKE operator:
SELECT * FROM Customers WHERE CompanyName LIKE '%food%';

-- Retrieve customers with a specific contact name starting with 'A':
SELECT * FROM Customers WHERE ContactName LIKE 'A%';

-- Retrieve customers with a specific contact name ending with 'son':
SELECT * FROM Customers WHERE ContactName LIKE '%son';

-- Retrieve customers with a specific city and country:
SELECT * FROM Customers WHERE City = 'Seattle' AND Country = 'USA';

-- Retrieve customers with a specific city or country:
SELECT * FROM Customers WHERE City = 'Berlin' OR Country = 'Germany';

-- Retrieve customers with a specific region or a specific postal code:
SELECT * FROM Customers WHERE Region = 'CA' OR PostalCode = '90210';

-- Retrieve customers whose contact name is NULL:
SELECT * FROM Customers WHERE ContactName IS NULL;

-- Retrieve customers with a specific region and not a specific postal code:
SELECT * FROM Customers WHERE Region = 'BC' AND PostalCode <> 'V5K 2A1';

-- Retrieve customers with a specific city and exclude those with a specific postal code:
SELECT * FROM Customers WHERE City = 'Paris' AND PostalCode <> '75001';

-- Retrieve customers with a specific country and sort them by contact name in ascending order:
SELECT * FROM Customers WHERE Country = 'Brazil' ORDER BY ContactName ASC;
