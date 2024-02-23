-- Create the table
CREATE TABLE EventSchedule (
    EventID INT PRIMARY KEY,
    EventName VARCHAR(100),
    EventDate DATE,
    EventStartTime TIME,
    EventDateTime DATETIME
);

-- Insert some sample records
INSERT INTO EventSchedule (EventID, EventName, EventDate, EventStartTime, EventDateTime)
VALUES
    (1, 'Conference', '2022-03-15', '09:00:00', '2022-03-15 09:00:00'),
    (2, 'Workshop', '2022-04-20', '14:30:00', '2022-04-20 14:30:00'),
    (3, 'Networking Mixer', '2022-05-25', '18:00:00', '2022-05-25 18:00:00');


-- Date Functions:

-- CURRENT_TIMESTAMP:
SELECT CURRENT_TIMESTAMP AS CurrentTimestamp;

-- YEAR:
SELECT EventName, YEAR(EventDate) AS EventYear FROM EventSchedule;

-- MONTH:
SELECT EventName, MONTH(EventDate) AS EventMonth FROM EventSchedule;

-- DAY:
SELECT EventName, DAY(EventDate) AS EventDay FROM EventSchedule;

-- DATEADD:
SELECT EventName, DATEADD(DAY, 7, EventDate) AS EventDatePlus7Days FROM EventSchedule;

-- DATEDIFF:
SELECT EventName, DATEDIFF(DAY, EventDate, '2022-12-31') AS DaysUntilYearEnd FROM EventSchedule;

-- CONVERT:
SELECT EventName, CONVERT(VARCHAR, EventDate, 106) AS FormattedEventDate FROM EventSchedule;

-- GETDATE:
SELECT EventName, GETDATE() AS CurrentDateTime FROM EventSchedule;

-- FORMAT:
SELECT EventName, FORMAT(EventDate, 'dd/MM/yyyy') AS FormattedEventDate FROM EventSchedule;

-- EOMONTH:
SELECT EventName, EOMONTH(EventDate) AS LastDayOfMonth FROM EventSchedule;




-- Time Functions:

-- CURRENT_TIMESTAMP:
SELECT CURRENT_TIMESTAMP AS CurrentTimestamp;
-- GETDATE:
SELECT EventName, GETDATE() AS CurrentDateTime FROM EventSchedule;

-- DATEPART (HOUR):
SELECT EventName, DATEPART(HOUR, EventStartTime) AS EventStartHour FROM EventSchedule;

-- DATEADD:
SELECT EventName, DATEADD(HOUR, 2, EventStartTime) AS EventStartTimePlus2Hours FROM EventSchedule;

-- DATEDIFF:
SELECT EventName, DATEDIFF(MINUTE, '00:00:00', EventStartTime) AS MinutesSinceMidnight FROM EventSchedule;

-- FORMAT:
SELECT EventName, FORMAT(EventStartTime, 'hh:mm tt') AS FormattedEventStartTime FROM EventSchedule;

-- CONVERT:
SELECT EventName, CONVERT(VARCHAR, EventStartTime, 108) AS EventStartTimeHHMMSS FROM EventSchedule;

-- SYSDATETIME:
SELECT EventName, SYSDATETIME() AS CurrentDateTimeWithPrecision FROM EventSchedule;

-- SWITCHOFFSET:
SELECT EventName, SWITCHOFFSET(SYSDATETIMEOFFSET(), '-05:00') AS DateTimeOffsetInDifferentTimeZone FROM EventSchedule;

-- GETUTCDATE:
SELECT EventName, GETUTCDATE() AS CurrentUTCDateTime FROM EventSchedule;



-- Datetime Functions:

-- CURRENT_TIMESTAMP:
SELECT CURRENT_TIMESTAMP AS CurrentTimestamp;
-- GETDATE:
SELECT EventName, GETDATE() AS CurrentDateTime FROM EventSchedule;

-- DATEDIFF:
SELECT EventName, DATEDIFF(MINUTE, EventDateTime, GETDATE()) AS MinutesAgo FROM EventSchedule;

-- DATEADD:
SELECT EventName, DATEADD(HOUR, 1, EventDateTime) AS EventDateTimePlus1Hour FROM EventSchedule;

-- FORMAT:
SELECT EventName, FORMAT(EventDateTime, 'dd/MM/yyyy hh:mm tt') AS FormattedEventDateTime FROM EventSchedule;

-- CONVERT:
SELECT EventName, CONVERT(VARCHAR, EventDateTime, 120) AS EventDateTimeFormatted FROM EventSchedule;

-- SYSDATETIME:
SELECT EventName, SYSDATETIME() AS CurrentDateTimeWithPrecision FROM EventSchedule;

-- SWITCHOFFSET:
SELECT EventName, SWITCHOFFSET(SYSDATETIMEOFFSET(), '-05:00') AS DateTimeOffsetInDifferentTimeZone FROM EventSchedule;

-- GETUTCDATE:
SELECT EventName, GETUTCDATE() AS CurrentUTCDateTime FROM EventSchedule;

-- EOMONTH:
SELECT EventName, EOMONTH(EventDateTime) AS LastDayOfMonth FROM EventSchedule
