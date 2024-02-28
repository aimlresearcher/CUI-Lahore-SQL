-- the GROUP BY clause is used in SQL to group rows based on the values in one or more columns. 
-- This is often used in conjunction with aggregate functions like COUNT, SUM, AVG, etc., to perform calculations on each group of rows.

-- Let's go through a few examples using the TennisData dataset:

-- Example 1: Count the Number of Days for Each Outlook

-- SELECT Outlook, COUNT(*) AS OutlookCount
-- FROM TennisData
-- GROUP BY Outlook;

-- This query groups the data by the Outlook column and counts the number of occurrences for each unique outlook. The result might look like

-- Example 2: Count the Number of Days for Each Combination of Outlook and Humidity
-- SELECT Outlook, Humidity, COUNT(*) AS Count
-- FROM TennisData
-- GROUP BY Outlook, Humidity;

-- This query groups the data by both the Outlook and Humidity columns, counting the occurrences for each unique combination. The result might look like
-- Example 3: Calculate the Average Number of Tennis Days for Each Temperature
-- SELECT Temp, AVG(CASE WHEN Tennis = 'Yes' THEN 1 ELSE 0 END) AS AvgTennisDays
-- FROM TennisData
-- GROUP BY Temp;

-- This query calculates the average number of days tennis was played for each temperature category. It uses a conditional aggregation with the CASE statement to count only the days where tennis was played. The result might look like:

-- These examples demonstrate how the GROUP BY clause can be used to analyze and aggregate data based on different columns in the TennisData table. It allows you to gain insights into patterns and trends within the dataset.