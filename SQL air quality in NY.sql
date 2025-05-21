SELECT * FROM air_quality_ny.air_quality;
SELECT CAST(Start_Date AS DATE) AS StartDate FROM Air_Quality;Start_DateStart_Date
DESCRIBE air_quality ;
SELECT CAST(Start_Date AS DATE) AS StartDate FROM air_quality;
SELECT 
  `Time Period`, 
  AVG(`Data Value`) AS Avg_NO2
FROM air_quality
WHERE Name = 'Nitrogen dioxide (NO2)'
GROUP BY `Time Period`
ORDER BY `Time Period`;
SELECT 
  `Geo Place Name`, 
  AVG(`Data Value`) AS Avg_NO2
FROM air_quality
WHERE Name = 'Nitrogen dioxide (NO2)'
GROUP BY `Geo Place Name`
ORDER BY Avg_NO2 DESC;
SELECT 
  SUBSTRING_INDEX(`Time Period`, ' ', -1) AS Year,
  AVG(`Data Value`) AS Avg_NO2
FROM air_quality
WHERE Name = 'Nitrogen dioxide (NO2)'
GROUP BY Year
ORDER BY Year;
SELECT DISTINCT Name FROM air_quality ORDER BY Name;
SELECT 
  `Geo Place Name`,
  `Time Period`,
  Name,
  AVG(`Data Value`) AS Avg_Value
FROM air_quality
WHERE Name IN (
  'Nitrogen dioxide (NO2)',
  'PM2.5',
  'Asthma',
  'Respiratory Diseases',
  'Deaths (all causes)'
)
GROUP BY `Geo Place Name`, `Time Period`, Name
ORDER BY `Geo Place Name`, `Time Period`, Name;
SELECT DISTINCT Name FROM air_quality;
SELECT 
  `Geo Place Name`,
  `Time Period`,
  Name,
  AVG(`Data Value`) AS Avg_Value
FROM air_quality
WHERE Name IN (
  'Fine particles (PM 2.5)',
  'Boiler Emissions- Total PM2.5 Emissions',
  'Boiler Emissions- Total NOx Emissions',
  'Boiler Emissions- Total SO2 Emissions',
  'Annual vehicle miles traveled',
  'Annual vehicle miles traveled (cars)',
  'Annual vehicle miles traveled (trucks)',
  'Asthma emergency department visits due to PM2.5',
  'Asthma emergency departments visits due to Ozone',
  'Asthma hospitalizations due to Ozone',
  'Cardiac and respiratory deaths due to Ozone',
  'Cardiovascular hospitalizations due to PM2.5 (age 40+)',
  'Deaths due to PM2.5'
)
GROUP BY `Geo Place Name`, `Time Period`, Name
ORDER BY `Geo Place Name`, `Time Period`, Name;
SELECT 
  `Geo Place Name`,
  `Time Period`,
  Name,
  `Data Value`
FROM air_quality
WHERE Name IN (
  'Fine particles (PM 2.5)',
  'Boiler Emissions- Total PM2.5 Emissions',
  'Boiler Emissions- Total NOx Emissions',
  'Boiler Emissions- Total SO2 Emissions',
  'Annual vehicle miles traveled',
  'Annual vehicle miles traveled (cars)',
  'Annual vehicle miles traveled (trucks)',
  'Asthma emergency department visits due to PM2.5',
  'Asthma emergency departments visits due to Ozone',
  'Asthma hospitalizations due to Ozone',
  'Cardiac and respiratory deaths due to Ozone',
  'Cardiovascular hospitalizations due to PM2.5 (age 40+)',
  'Deaths due to PM2.5'
);
SELECT 
    `Geo Place Name`,
    AVG(`Data Value`) AS Avg_PM25
FROM air_quality
WHERE Name = 'Fine particles (PM 2.5)'
GROUP BY `Geo Place Name`
ORDER BY Avg_PM25 DESC
LIMIT 5;
SELECT 
    `Geo Place Name`,
    SUM(`Data Value`) AS Deaths_PM25
FROM air_quality
WHERE Name = 'Deaths due to PM2.5'
GROUP BY `Geo Place Name`
ORDER BY Deaths_PM25 DESC
LIMIT 5;
SELECT 
    `Time Period`,
    ROUND(AVG(`Data Value`),2) AS Avg_PM25
FROM air_quality
WHERE Name = 'Fine particles (PM 2.5)'
GROUP BY `Time Period`
ORDER BY `Time Period`;
SELECT 
    `Geo Place Name`,
    SUM(`Data Value`) AS Total_Hospitalizations
FROM air_quality
WHERE Name IN (
    'Asthma emergency department visits due to PM2.5',
    'Asthma emergency departments visits due to Ozone',
    'Asthma hospitalizations due to Ozone',
    'Cardiovascular hospitalizations due to PM2.5 (age 40+)'
)
GROUP BY `Geo Place Name`
ORDER BY Total_Hospitalizations DESC
LIMIT 5;

