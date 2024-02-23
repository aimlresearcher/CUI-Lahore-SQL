-- GETDATE() and SYSDATETIME():

-- Returns the current date and time.
-- GETDATE() returns the current date and time rounded to the nearest second.
-- SYSDATETIME() returns the current date and time with higher fractional seconds precision.
SELECT GETDATE() AS CurrentDateTime, SYSDATETIME() AS CurrentDateTimeWithPrecision;

-- CONVERT():
-- Converts a datetime or smalldatetime value to a specified data type.
-- Useful for formatting date and time values.
SELECT CONVERT(VARCHAR, GETDATE(), 108) AS TimeOnly;


-- DATEPART():
-- Returns a specified part of a datetime or smalldatetime value.
-- Commonly used to extract the hour, minute, or second.
SELECT DATEPART(HOUR, GETDATE()) AS CurrentHour;

-- DATEDIFF():
-- Returns the difference between two datetime or smalldatetime values in a specified datepart.
-- Useful for calculating the time interval between two points in time.
SELECT DATEDIFF(MINUTE, '2022-01-01 10:00:00', '2022-01-01 11:30:00') AS MinutesDifference;

-- DATEADD()
-- Adds a specified amount of time to a datetime or smalldatetime value.
-- Useful for incrementing or decrementing a date or time value.
SELECT DATEADD(HOUR, 3, '2022-01-01 12:00:00') AS ThreeHoursLater;

-- FORMAT()
-- Formats a datetime or smalldatetime value with a specified format.
-- Provides flexibility in displaying date and time values.
SELECT FORMAT(GETDATE(), 'hh:mm tt') AS FormattedTime;

-- GETUTCDATE()
-- Returns the current UTC date and time.
-- Useful when working with coordinated universal time.
SELECT GETUTCDATE() AS CurrentUTCDateTime;

-- SWITCHOFFSET():
-- Changes the time zone offset of a datetimeoffset value.
-- Useful for converting datetimeoffset values between time zones.
SELECT SWITCHOFFSET(SYSDATETIMEOFFSET(), '-05:00') AS DateTimeOffsetInDifferentTimeZo