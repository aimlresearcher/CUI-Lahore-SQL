-- 1) Select all data from the table:
SELECT * FROM TennisData;


-- 2) Select distinct outlook values:
SELECT DISTINCT Outlook FROM TennisData;


-- 3) Count the number of occurrences for each outlook:
SELECT Outlook, COUNT(*) AS OutlookCount FROM TennisData GROUP BY Outlook;


-- 4) Select days where tennis was played:
SELECT * FROM TennisData WHERE Tennis = 'Yes';


-- 5) Select days where tennis was not played and the weather was sunny:
SELECT * FROM TennisData WHERE Tennis = 'No' AND Outlook = 'Sunny';


-- 6) Select days with high humidity where tennis was played:
SELECT * FROM TennisData WHERE Humidity = 'High' AND Tennis = 'Yes';


-- 7) Select days with a cool temperature and strong wind where tennis was played:
SELECT * FROM TennisData WHERE Temp = 'Cool' AND Wind = 'Strong' AND Tennis = 'Yes';


-- 8) Count the total number of days in the dataset:
SELECT COUNT(*) AS TotalDays FROM TennisData;


-- 9) Select days with overcast weather where tennis was played and the temperature was hot:
SELECT * FROM TennisData WHERE Outlook = 'Overcast' AND Tennis = 'Yes' AND Temp = 'Hot';


-- 10) Select days where tennis was played and the wind was weak or the humidity was normal:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND (Wind = 'Weak' OR Humidity = 'Normal');

-- 11) Select days where tennis was not played and the outlook was either sunny or overcast:
SELECT * FROM TennisData WHERE Tennis = 'No' AND (Outlook = 'Sunny' OR Outlook = 'Overcast');

-- 12) Select days with mild temperature where tennis was played and the wind was not strong:
SELECT * FROM TennisData WHERE Temp = 'Mild' AND Wind != 'Strong' AND Tennis = 'Yes';

-- 13) Count the number of days where tennis was played in each temperature category:
SELECT Temp, COUNT(*) AS TennisCount FROM TennisData WHERE Tennis = 'Yes' GROUP BY Temp;


-- 14) Select days where tennis was played and the outlook was not rainy:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Outlook != 'Rain';


-- 15) Select days where tennis was played and the humidity was high or the wind was strong:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND (Humidity = 'High' OR Wind = 'Strong');


-- 16) Count the number of days where tennis was not played:
SELECT COUNT(*) AS NoTennisDays FROM TennisData WHERE Tennis = 'No';


-- 17) Select days where tennis was played and the outlook was either sunny or overcast, and the wind was weak:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND (Outlook = 'Sunny' OR Outlook = 'Overcast') AND Wind = 'Weak';


-- 18) Select days where tennis was not played and the temperature was mild or the wind was strong:
SELECT * FROM TennisData WHERE Tennis = 'No' AND (Temp = 'Mild' OR Wind = 'Strong');


-- 19) Count the number of days where tennis was played with each combination of outlook and humidity:
SELECT Outlook, Humidity, COUNT(*) AS TennisCount FROM TennisData WHERE Tennis = 'Yes' GROUP BY Outlook, Humidity;


-- 20) Select days where tennis was played and the temperature was hot, and the humidity was not high:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Temp = 'Hot' AND Humidity != 'High';


-- 21) Select days where tennis was played and the weather was not rainy or the wind was not strong:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND (Outlook != 'Rain' OR Wind != 'Strong');


-- 22) Select days where tennis was not played and the outlook was rainy or the temperature was cool:
SELECT * FROM TennisData WHERE Tennis = 'No' AND (Outlook = 'Rain' OR Temp = 'Cool');


-- 23) Count the number of days where tennis was played in each humidity category:
SELECT Humidity, COUNT(*) AS TennisCount FROM TennisData WHERE Tennis = 'Yes' GROUP BY Humidity;


-- 24) Select days where tennis was played and the outlook was sunny, and the humidity was normal:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Outlook = 'Sunny' AND Humidity = 'Normal';


-- 25) Select days where tennis was played and the temperature was cool or the wind was weak:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND (Temp = 'Cool' OR Wind = 'Weak');


-- 26) Count the number of days where tennis was not played with each combination of outlook and wind:
SELECT Outlook, Wind, COUNT(*) AS NoTennisCount FROM TennisData WHERE Tennis = 'No' GROUP BY Outlook, Wind;


-- 27) Select days where tennis was not played and the outlook was overcast, and the humidity was high:
SELECT * FROM TennisData WHERE Tennis = 'No' AND Outlook = 'Overcast' AND Humidity = 'High';


-- 28) Select days where tennis was played and the temperature was mild, and the humidity was not high:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Temp = 'Mild' AND Humidity != 'High';


-- 29) Count the number of days where tennis was played with each combination of temperature and wind:
SELECT Temp, Wind, COUNT(*) AS TennisCount FROM TennisData WHERE Tennis = 'Yes' GROUP BY Temp, Wind;


-- 30) Select days where tennis was not played and the outlook was rainy, and the wind was strong:
SELECT * FROM TennisData WHERE Tennis = 'No' AND Outlook = 'Rain' AND Wind = 'Strong';


-- 31) Select days where tennis was played and the outlook was not rainy or the temperature was hot:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND (Outlook != 'Rain' OR Temp = 'Hot');


-- 32) Select days where tennis was played and the humidity was high, and the wind was not strong:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Humidity = 'High' AND Wind != 'Strong';


-- 33) Count the number of days where tennis was played in each wind category:
SELECT Wind, COUNT(*) AS TennisCount FROM TennisData WHERE Tennis = 'Yes' GROUP BY Wind;


-- 34) Select days where tennis was played and the outlook was sunny, and the humidity was high:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Outlook = 'Sunny' AND Humidity = 'High';



-- 35) Select days where tennis was played and the temperature was mild, and the wind was weak:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Temp = 'Mild' AND Wind = 'Weak';



-- 36) Count the number of days where tennis was not played in each temperature category:
SELECT Temp, COUNT(*) AS NoTennisCount FROM TennisData WHERE Tennis = 'No' GROUP BY Temp;



-- 37) Select days where tennis was played and the outlook was overcast, and the wind was strong:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Outlook = 'Overcast' AND Wind = 'Strong';



-- 38) Select days where tennis was not played and the temperature was hot, and the humidity was not high:
SELECT * FROM TennisData WHERE Tennis = 'No' AND Temp = 'Hot' AND Humidity != 'High';



-- 39) Count the number of days where tennis was not played with each combination of outlook and humidity:
SELECT Outlook, Humidity, COUNT(*) AS NoTennisCount FROM TennisData WHERE Tennis = 'No' GROUP BY Outlook, Humidity;



-- 40) Select days where tennis was not played and the outlook was rainy, and the humidity was normal:
SELECT * FROM TennisData WHERE Tennis = 'No' AND Outlook = 'Rain' AND Humidity = 'Normal';



-- 41) Select days where tennis was played and the temperature was cool, and the wind was not strong:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Temp = 'Cool' AND Wind != 'Strong';



-- 42) Count the number of days where tennis was played with each combination of outlook and wind:
SELECT Outlook, Wind, COUNT(*) AS TennisCount FROM TennisData WHERE Tennis = 'Yes' GROUP BY Outlook, Wind;



-- 43) Select days where tennis was played and the outlook was sunny, and the humidity was normal:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Outlook = 'Sunny' AND Humidity = 'Normal';



-- 44) Select days where tennis was not played and the temperature was mild, and the wind was strong:
SELECT * FROM TennisData WHERE Tennis = 'No' AND Temp = 'Mild' AND Wind = 'Strong';



-- 45) Count the number of days where tennis was not played in each wind category:
SELECT Wind, COUNT(*) AS NoTennisCount FROM TennisData WHERE Tennis = 'No' GROUP BY Wind;


-- 46) Select days where tennis was played and the outlook was overcast, and the humidity was normal:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Outlook = 'Overcast' AND Humidity = 'Normal';


-- 47) Select days where tennis was played and the temperature was hot, and the wind was weak:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Temp = 'Hot' AND Wind = 'Weak';


-- 48) Count the number of days where tennis was played with each combination of temperature and humidity:
SELECT Temp, Humidity, COUNT(*) AS TennisCount FROM TennisData WHERE Tennis = 'Yes' GROUP BY Temp, Humidity;


-- 49) Select days where tennis was played and the outlook was sunny, and the wind was not strong:
SELECT * FROM TennisData WHERE Tennis = 'Yes' AND Outlook = 'Sunny' AND Wind != 'Strong';


-- 50) Select days where tennis was not played and the temperature was cool, and the humidity was high:
SELECT * FROM TennisData WHERE Tennis = 'No' AND Temp = 'Cool' AND Humidity = 'High';



