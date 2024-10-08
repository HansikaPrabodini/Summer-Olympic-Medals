USE [olympics1]
GO

SELECT [Year]
      ,[Country]
      ,[Total_Medals]
      ,[Gold_Medals]
      ,[Silver_Medals]
      ,[Bronze_Medals]
      ,[Total_Athletes]
      ,[Events_Count]
      ,[Host_or_Not]
      ,[Country_Code]
      ,[population_total]
      ,[population_growth]
      ,[GNI_per_capita]
      ,[GDP]
      ,[GDP_growth]
      ,[Region]
      ,[GDP_per_capita]
      ,[Population_Percentage]
      ,[GDP_Percentage]
      ,[HDI]
  FROM [dbo].[ol_92_to_20$]

GO

--------------------
----get all countries in as same 
select distinct Country_Code
from ol_92_to_20$

select *
into medal_data_1
from ol_92_to_20$

select distinct Country_Code
from medal_data_1


UPDATE medal_data_1
SET Country = CASE Country_Code
    WHEN 'AFG' THEN 'Afghanistan'
    WHEN 'ALG' THEN 'Algeria'
    WHEN 'ARE' THEN 'United Arab Emirates'
    WHEN 'ARG' THEN 'Argentina'
    WHEN 'ARM' THEN 'Armenia'
    WHEN 'AUS' THEN 'Australia'
    WHEN 'AUT' THEN 'Austria'
    WHEN 'AZE' THEN 'Azerbaijan'
    WHEN 'BAR' THEN 'Barbados'
    WHEN 'BDI' THEN 'Burundi'
    WHEN 'BEL' THEN 'Belgium'
    WHEN 'BER' THEN 'Bermuda'
    WHEN 'BFA' THEN 'Burkina Faso'
    WHEN 'BHS' THEN 'Bahamas'
    WHEN 'BLR' THEN 'Belarus'
    WHEN 'BOT' THEN 'Botswana'
    WHEN 'BRA' THEN 'Brazil'
    WHEN 'BRN' THEN 'Bahrain'
    WHEN 'BUL' THEN 'Bulgaria'
    WHEN 'CAN' THEN 'Canada'
    WHEN 'CHE' THEN 'Switzerland'
    WHEN 'CHI' THEN 'Chile'
    WHEN 'CHN' THEN 'China'
    WHEN 'CIV' THEN 'Côte d''Ivoire'
    WHEN 'CMR' THEN 'Cameroon'
    WHEN 'COL' THEN 'Colombia'
    WHEN 'CRC' THEN 'Costa Rica'
    WHEN 'CRO' THEN 'Croatia'
    WHEN 'CUB' THEN 'Cuba'
    WHEN 'CYP' THEN 'Cyprus'
    WHEN 'CZE' THEN 'Czech Republic'
    WHEN 'DEN' THEN 'Denmark'
    WHEN 'DOM' THEN 'Dominican Republic'
    WHEN 'ECU' THEN 'Ecuador'
    WHEN 'EGY' THEN 'Egypt'
    WHEN 'ERI' THEN 'Eritrea'
    WHEN 'ESP' THEN 'Spain'
    WHEN 'EST' THEN 'Estonia'
    WHEN 'ETH' THEN 'Ethiopia'
    WHEN 'EUN' THEN 'Unified Team'
    WHEN 'FIJ' THEN 'Fiji'
    WHEN 'FIN' THEN 'Finland'
    WHEN 'FRA' THEN 'France'
    WHEN 'GAB' THEN 'Gabon'
    WHEN 'GBR' THEN 'Great Britain'
    WHEN 'GEO' THEN 'Georgia'
    WHEN 'GER' THEN 'Germany'
    WHEN 'GHA' THEN 'Ghana'
    WHEN 'GRD' THEN 'Grenada'
    WHEN 'GRE' THEN 'Greece'
    WHEN 'GUA' THEN 'Guatemala'
    WHEN 'HKG' THEN 'Hong Kong'
    WHEN 'HUN' THEN 'Hungary'
    WHEN 'INA' THEN 'Indonesia'
    WHEN 'IND' THEN 'India'
    WHEN 'IOA' THEN 'Independent Olympic Athletes'
    WHEN 'IRL' THEN 'Ireland'
    WHEN 'IRN' THEN 'Iran'
    WHEN 'ISL' THEN 'Iceland'
    WHEN 'ISR' THEN 'Israel'
    WHEN 'ITA' THEN 'Italy'
    WHEN 'JAM' THEN 'Jamaica'
    WHEN 'JOR' THEN 'Jordan'
    WHEN 'JPN' THEN 'Japan'
    WHEN 'KAZ' THEN 'Kazakhstan'
    WHEN 'KEN' THEN 'Kenya'
    WHEN 'KGZ' THEN 'Kyrgyzstan'
    WHEN 'KOR' THEN 'South Korea'
    WHEN 'KOS' THEN 'Kosovo'
    WHEN 'KSA' THEN 'Saudi Arabia'
    WHEN 'KUW' THEN 'Kuwait'
    WHEN 'KWT' THEN 'Kuwait'
    WHEN 'LTU' THEN 'Lithuania'
    WHEN 'LVA' THEN 'Latvia'
    WHEN 'MAR' THEN 'Morocco'
    WHEN 'MAS' THEN 'Malaysia'
    WHEN 'MDA' THEN 'Moldova'
    WHEN 'MEX' THEN 'Mexico'
    WHEN 'MGL' THEN 'Mongolia'
    WHEN 'MKD' THEN 'North Macedonia'
    WHEN 'MNE' THEN 'Montenegro'
    WHEN 'MOZ' THEN 'Mozambique'
    WHEN 'MRI' THEN 'Mauritius'
    WHEN 'NAM' THEN 'Namibia'
    WHEN 'NED' THEN 'Netherlands'
    WHEN 'NGA' THEN 'Nigeria'
    WHEN 'NOR' THEN 'Norway'
    WHEN 'NZL' THEN 'New Zealand'
    WHEN 'PAK' THEN 'Pakistan'
    WHEN 'PAN' THEN 'Panama'
    WHEN 'PAR' THEN 'Paraguay'
    WHEN 'PER' THEN 'Peru'
    WHEN 'PHI' THEN 'Philippines'
    WHEN 'POL' THEN 'Poland'
    WHEN 'POR' THEN 'Portugal'
    WHEN 'PRK' THEN 'North Korea'
    WHEN 'PUR' THEN 'Puerto Rico'
    WHEN 'QAT' THEN 'Qatar'
    WHEN 'ROC' THEN 'Russian Olympic Committee'
    WHEN 'ROU' THEN 'Romania'
    WHEN 'RSA' THEN 'South Africa'
    WHEN 'RUS' THEN 'Russia'
    WHEN 'SCG' THEN 'Serbia and Montenegro'
    WHEN 'SDN' THEN 'Sudan'
    WHEN 'SGP' THEN 'Singapore'
    WHEN 'SLO' THEN 'Slovenia'
    WHEN 'SMR' THEN 'San Marino'
    WHEN 'SRB' THEN 'Serbia'
    WHEN 'SRI' THEN 'Sri Lanka'
    WHEN 'SUI' THEN 'Switzerland'
    WHEN 'SUR' THEN 'Suriname'
    WHEN 'SVK' THEN 'Slovakia'
    WHEN 'SVN' THEN 'Slovenia'
    WHEN 'SWE' THEN 'Sweden'
    WHEN 'SYR' THEN 'Syria'
    WHEN 'TCH' THEN 'Czechoslovakia'
    WHEN 'THA' THEN 'Thailand'
    WHEN 'TJK' THEN 'Tajikistan'
    WHEN 'TKM' THEN 'Turkmenistan'
    WHEN 'TOG' THEN 'Togo'
    WHEN 'TON' THEN 'Tonga'
    WHEN 'TPE' THEN 'Chinese Taipei'
    WHEN 'TTO' THEN 'Trinidad and Tobago'
    WHEN 'TUN' THEN 'Tunisia'
    WHEN 'TUR' THEN 'Turkey'
    WHEN 'UGA' THEN 'Uganda'
    WHEN 'UKR' THEN 'Ukraine'
    WHEN 'URU' THEN 'Uruguay'
    WHEN 'USA' THEN 'United States'
    WHEN 'UZB' THEN 'Uzbekistan'
    WHEN 'VEN' THEN 'Venezuela'
    WHEN 'VNM' THEN 'Vietnam'
    WHEN 'ZMB' THEN 'Zambia'
    WHEN 'ZWE' THEN 'Zimbabwe'
    ELSE Country
END;


select *
from medal_data_1
where Country = 'Burkina Faso'



select distinct Country
from medal_data_1

update medal_data_1
set Country = 'United kingdom'
where Country_Code = 'GBR'


---------check any row COUNT(Events_Count) > COUNT(Total_Athletes) has this - if any row had this its incorrect
SELECT Year, Country, COUNT(Events_Count) AS Event_Count, COUNT(Total_Athletes) AS Athlete_Count
FROM medal_data_1
GROUP BY Year, Country
HAVING COUNT(Events_Count) > COUNT(Total_Athletes)


----------------------------------------------------
select *
from medal_data_1


select *
from medal_data_1



SELECT *
FROM medal_data_1
WHERE Total_Medals IS NOT NULL
  AND Gold_Medals IS NOT NULL
  AND Silver_Medals IS NOT NULL
  AND Bronze_Medals IS NOT NULL
  AND Total_Athletes IS NOT NULL
  AND Events_Count IS NOT NULL
  AND Host_or_Not IS NOT NULL
  AND Country_Code IS NOT NULL
  AND population_total IS NOT NULL
  AND population_growth IS NOT NULL
  AND GNI_per_capita IS NOT NULL
  AND GDP IS NOT NULL
  AND GDP_growth IS NOT NULL
  AND Region IS NOT NULL
  AND GDP_per_capita IS NOT NULL
  AND Population_Percentage IS NOT NULL
  AND GDP_Percentage IS NOT NULL
  AND HDI IS NOT NULL




--get Nulls
SELECT *
FROM medal_data_1
WHERE Total_Medals IS NULL
   OR Gold_Medals IS NULL
   OR Silver_Medals IS NULL
   OR Bronze_Medals IS NULL
   OR Total_Athletes IS NULL
   OR Events_Count IS NULL
   OR Host_or_Not IS NULL
   OR Country_Code IS NULL
   OR population_total IS NULL
   OR population_growth IS NULL
   OR GNI_per_capita IS NULL
   OR GDP IS NULL
   OR GDP_growth IS NULL
   OR Region IS NULL
   OR GDP_per_capita IS NULL
   OR Population_Percentage IS NULL
   OR GDP_Percentage IS NULL
   or HDI is Null
 
update medal_data_1
set GNI_per_capita = 0
where Year = '2020'
and Country = 'Cuba'

update medal_data_1
set GNI_per_capita = 0
where Year = '2020'
and Country = 'Turkmenistan'

update medal_data_1
set GNI_per_capita = 0
where Year = '1996'
and Country = 'Latvia'


SELECT *
FROM medal_data_1
WHERE HDI is Null

update medal_data_1 set HDI = 0.742 where Year = '1992' and Country = 'Puerto Rico'
update medal_data_1 set HDI = 0.77 where Year = '1996' and Country = 'Puerto Rico'
update medal_data_1 set HDI = 0.845 where Year = '2012' and Country = 'Puerto Rico'
update medal_data_1 set HDI = 0.852 where Year = '2016' and Country = 'Puerto Rico'
update medal_data_1 set HDI = 0.842 where Year = '2020' and Country = 'Puerto Rico'


update medal_data_1 set HDI = 0.379 where Year = '1992' and Country = 'Ethiopia'
update medal_data_1 set HDI = 0.406 where Year = '1996' and Country = 'Ethiopia'

update medal_data_1 set HDI = 0.782 where Year = '2016' and Country = 'Kosovo'



update medal_data_1 set HDI = 0.742 where Year = '1992' and Country = 'Puerto Rico'
update medal_data_1 set HDI = 0.77 where Year = '1996' and Country = 'Puerto Rico'
update medal_data_1 set HDI = 0.845 where Year = '2012' and Country = 'Puerto Rico'
update medal_data_1 set HDI = 0.852 where Year = '2016' and Country = 'Puerto Rico'
update medal_data_1 set HDI = 0.842 where Year = '2020' and Country = 'Puerto Rico'


update medal_data_1 set HDI = 0.418  where Year = '2004' and Country = 'Eritrea'
update medal_data_1 set HDI = 0.683 where Year = '1996' and Country = 'Georgia'







update medal_data_1 set HDI = 0.489 where Year = '2016' and Country like '%Côte d''Ivoire%'
update medal_data_1 set HDI = 0.730  where Year = '1992' and Country = 'Suriname'
update medal_data_1 set HDI = 0.635 where Year = '1996' and Country = 'Uzbekistan'


update medal_data_1 set HDI = 0.470 where Year = '2000' and Country = 'Nigeria'
update medal_data_1 set HDI = 0.437  where Year = '1992' and Country = 'Nigeria'
update medal_data_1 set HDI = 0.442 where Year = '1996' and Country = 'Nigeria'


update medal_data_1 set GNI_per_capita = 1200 where Year = '2000' and Country = 'Nigeria'
update medal_data_1 set GNI_per_capita = 1070 where Year = '1992' and Country = 'Nigeria'
update medal_data_1 set GNI_per_capita = 1190 where Year = '1996' and Country = 'Nigeria'


update medal_data_1 set GNI_per_capita = 1440 where Year = '2004' and Country = 'Nigeria'
update medal_data_1 set GNI_per_capita = 3790 where Year = '1996' and Country = 'Lithuania'


--------add Chinese Taipei data ----



SELECT [F1]
      ,[GDP_per_capita]
      ,[GDP]
      ,[GNI_per_capita]
      ,[population_total]
      ,[GDP_growth]
      ,[HDI]
  FROM [dbo].[chinese_taipe$]

GO

select *
from [chinese_taipe$]

select *
from medal_data_2

select *
into medal_data_2
from medal_data_1


UPDATE t2
SET GDP = ta.GDP
FROM medal_data_2 t2
JOIN [chinese_taipe$] ta
ON  t2.Year = ta.F1
where t2.Country ='Chinese Taipei'

update medal_data_2
set GDP = GDP * 1000
where Country ='Chinese Taipei'


UPDATE t2
SET GDP_per_capita = ta.GDP_per_capita
FROM medal_data_2 t2
JOIN [chinese_taipe$] ta
ON  t2.Year = ta.F1
where t2.Country ='Chinese Taipei'



UPDATE t2
SET GDP_growth = ta.GDP_growth
FROM medal_data_2 t2
JOIN [chinese_taipe$] ta
ON  t2.Year = ta.F1
where t2.Country ='Chinese Taipei'

UPDATE t2
SET HDI = ta.HDI
FROM medal_data_2 t2
JOIN [chinese_taipe$] ta
ON  t2.Year = ta.F1
where t2.Country ='Chinese Taipei'


UPDATE t2
SET GNI_per_capita = ta.GNI_per_capita
FROM medal_data_2 t2
JOIN [chinese_taipe$] ta
ON  t2.Year = ta.F1
where t2.Country ='Chinese Taipei'



UPDATE t2
SET population_total = ta.population_total
FROM medal_data_2 t2
JOIN [chinese_taipe$] ta
ON  t2.Year = ta.F1
where t2.Country ='Chinese Taipei'


update medal_data_2 set population_growth = 0.87 where Year = '1992' and Country = 'Chinese Taipei'
update medal_data_2 set population_growth = 0.73 where Year = '1996' and Country = 'Chinese Taipei'
update medal_data_2 set population_growth = 0.61 where Year = '2000' and Country = 'Chinese Taipei'
update medal_data_2 set population_growth = 0.48 where Year = '2004' and Country = 'Chinese Taipei'
update medal_data_2 set population_growth = 0.24 where Year = '2008' and Country = 'Chinese Taipei'
update medal_data_2 set population_growth = 0.39 where Year = '2012' and Country = 'Chinese Taipei'
update medal_data_2 set population_growth = 0.35 where Year = '2016' and Country = 'Chinese Taipei'
update medal_data_2 set population_growth = 0.18 where Year = '2020' and Country = 'Chinese Taipei'

update medal_data_2 set Region ='East Asia and Pacific' where Country ='Chinese Taipei'


--population percentage and Gdp percentage 
UPDATE medal_data_2
SET Population_Percentage = population_total / (
    SELECT SUM(population_total)
    FROM medal_data_2
   
)
WHERE Country = 'Chinese Taipei';


UPDATE medal_data_2
SET GDP_Percentage = GDP / (
    SELECT SUM(GDP)
    FROM medal_data_2
   
)
WHERE Country = 'Chinese Taipei';


SELECT *
into medal_data_3
FROM medal_data_2
WHERE Total_Medals IS NOT NULL
  AND Gold_Medals IS NOT NULL
  AND Silver_Medals IS NOT NULL
  AND Bronze_Medals IS NOT NULL
  AND Total_Athletes IS NOT NULL
  AND Events_Count IS NOT NULL
  AND Host_or_Not IS NOT NULL
  AND Country_Code IS NOT NULL
  AND population_total IS NOT NULL
  AND population_growth IS NOT NULL
  AND GNI_per_capita IS NOT NULL
  AND GDP IS NOT NULL
  AND GDP_growth IS NOT NULL
  AND Region IS NOT NULL
  AND GDP_per_capita IS NOT NULL
  AND Population_Percentage IS NOT NULL
  AND GDP_Percentage IS NOT NULL
  AND HDI IS NOT NULL



select *
from medal_data_3


select count (distinct population_total)
from medal_data_3




select *
from medal_data_3
where Country_Code ='ROC'



select *
from medal_data_3
where Country like 'Russia'

update medal_data_3
set Country ='Russia'
where Country_Code ='ROC'






