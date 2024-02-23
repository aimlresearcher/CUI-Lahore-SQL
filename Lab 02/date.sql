-- Microsoft SQL Server provides various date and time functions that allow you to perform operations on date and time values. Here's a list of some common date operations in Microsoft SQL Server along with brief explanations:

-- GETDATE():
-- Returns the current date and time of the SQL Server.
SELECT GETDATE() AS CurrentDateTime;


-- SYSDATETIME():
-- Similar to GETDATE(), it returns the current date and time with higher fractional seconds precision.
SELECT SYSDATETIME() AS CurrentDateTimeWithPrecision;


-- CONVERT():
-- Converts a date or time value to a specified data type.
SELECT CONVERT(VARCHAR, GETDATE(), 120) AS FormattedDateTime;


-- DATEDIFF():
-- Returns the difference between two date or time values in a specified datepart.
SELECT DATEDIFF(DAY, '2022-01-01', '2022-02-01') AS DaysDifference;


-- DATEADD():
-- Adds a specified amount of time to a date or time value.
SELECT DATEADD(MONTH, 3, '2022-01-01') AS ThreeMonthsLater;


-- DATEPART():
-- Returns a specified part of a date or time value.
SELECT DATEPART(YEAR, '2022-02-23') AS YearPart;


-- FORMAT():
-- Formats a date or time value with a specified format.
SELECT FORMAT(GETDATE(), 'MM/dd/yyyy') AS FormattedDate;


-- YEAR(), MONTH(), DAY():
-- Extracts the year, month, or day from a date or time value.
SELECT YEAR('2022-02-23') AS ExtractedYear;


-- GETUTCDATE():
-- Returns the current UTC date and time.
SELECT GETUTCDATE() AS CurrentUTCDateTime;


-- EOMONTH():
-- Returns the last day of the month for a specified date.
SELECT EOMONTH('2022-02-23') AS LastDayOfMonth;

