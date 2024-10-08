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
  FROM [dbo].[summary$]

GO


select *
from [summary$]


select distinct Country
from [summary$]


---------add 2024 summer olympics games ----------------------

USE [olympics1]
GO

SELECT [code]
      ,[current]
      ,[name]
      ,[name_short]
      ,[name_tv]
      ,[gender]
      ,[function]
      ,[country_code]
      ,[country]
      ,[country_long]
      ,[nationality]
      ,[nationality_long]
      ,[nationality_code]
      ,[height]
      ,[weight]
      ,[disciplines]
      ,[events]
      ,[birth_date]
      ,[birth_place]
      ,[birth_country]
      ,[residence_place]
      ,[residence_country]
      ,[nickname]
      ,[hobbies]
      ,[occupation]
      ,[education]
      ,[family]
      ,[lang]
      ,[coach]
      ,[reason]
      ,[hero]
      ,[influence]
      ,[philosophy]
      ,[sporting_relatives]
      ,[ritual]
      ,[other_sports]
  FROM [dbo].['2024 summer ol athletes$']

GO

select *
into ol_2024_summer
from ['2024 summer ol athletes$']




-----get total athletes participated -----------------------------------
SELECT country, country_code, COUNT(code) AS Total_Athletes
FROM ['2024 summer ol athletes$']
GROUP BY country , country_code


------- get total event participated
select *
from ol_2024_summer

SELECT country, 
       CONCAT(disciplines, ' - ', events) AS discipline_event
FROM ol_2024_summer
GROUP BY country, disciplines, events;


SELECT country, 
       CONCAT(REPLACE(REPLACE(disciplines, '[', ''), ']', ''), ' - ', REPLACE(REPLACE(events, '[', ''), ']', '')) AS discipline_event
FROM ol_2024_summer
GROUP BY country, disciplines, events;



SELECT country, 
       CONCAT(REPLACE(REPLACE(REPLACE(REPLACE(disciplines, '[', ''), ']', ''), '''', ''), '"', ''), 
              ' ', 
              REPLACE(REPLACE(REPLACE(REPLACE(events, '[', ''), ']', ''), '''', ''), '"', '')) AS discipline_event
FROM ol_2024_summer
GROUP BY country, disciplines, events;



alter table ol_2024_summer
add discipline_event varchar(255)


UPDATE ol_2024_summer
SET discipline_event = CONCAT(
    REPLACE(REPLACE(REPLACE(REPLACE(disciplines, '[', ''), ']', ''), '''', ''), '"', ''), 
    ' ', 
    REPLACE(REPLACE(REPLACE(REPLACE(events, '[', ''), ']', ''), '''', ''), '"', '')
)


select *
from ol_2024_summer

--- get total events -------
select country ,country_code,count( distinct discipline_event) as Events_Count , COUNT(code) AS Total_Athletes
from ol_2024_summer
group by country,country_code



-----------

select country ,country_code,count( distinct discipline_event) as Events_Count , COUNT(code) AS Total_Athletes
into events_athletes_2024
from ol_2024_summer
group by country,country_code



select *
from events_athletes_2024


-----------------------------------------------------------------
------------add medals totals -----------------------------------------

USE [olympics1]
GO

SELECT [country_code]
      ,[country]
      ,[country_long]
      ,[Gold Medal]
      ,[Silver Medal]
      ,[Bronze Medal]
      ,[Total]
  FROM [dbo].[medals_total_2024$]

GO

select *
into total_medals_2024
from [medals_total_2024$]

select *
from total_medals_2024

------------------------------add population , percentage , growth ------------------------------------------------------------------
USE [olympics1]
GO

SELECT [place]
      ,[pop1980]
      ,[pop2000]
      ,[pop2010]
      ,[pop2023]
      ,[pop2024]
      ,[pop2030]
      ,[pop2050]
      ,[country]
      ,[area]
      ,[landAreaKm]
      ,[cca2]
      ,[cca3]
      ,[unMember]
      ,[netChange]
      ,[growthRate]
      ,[worldPercentage]
      ,[density]
      ,[densityMi]
      ,[rank]
  FROM [dbo].['2024_populations$']

select [country] as country, [cca3] as country_code,[pop2024] as population_total , [growthRate] as population_growth ,[worldPercentage] as Population_Percentage
into population_growth_percentages_2024
from ['2024_populations$']


select *
from population_growth_percentages_2024

---------------------------------------------------------------------------------------------------------------------------------------------------------



-------------add GDP , GDP growth . GDP per capita , GDP percentage-----------------------------------

USE [olympics1]
GO

SELECT [2024]
      ,[Real GDP growth ]
      ,[GDP, current prices (Billions of U#S# dollars)]
      ,[GDP per capita]
      ,[GDP]
      ,[GDP percentage]
  FROM [dbo].['2024_gdps$']

GO




select [2024] as country ,[GDP]as GDP,[Real GDP growth ] as GDP_growth , [GDP per capita] as GDP_per_capita , [GDP percentage] as GDP_Percentage
into all_2024_gdps
from ['2024_gdps$']


select *
from all_2024_gdps



------------------------------ add GNI per capita -----------------------------------------

USE [olympics1]
GO

SELECT [country]
      ,[GniPerCapita]
  FROM [dbo].['gni-per-capita-by-country-2024$']

GO



select country , [GniPerCapita] as GNI_per_capita
into gni_per_capita_2024
from ['gni-per-capita-by-country-2024$']


select *
from gni_per_capita_2024




--------------------------------------add HDI index -------------------------------------

USE [olympics1]
GO

SELECT [country]
      ,[Hdi2022]
  FROM [dbo].[hdi_2024$]

GO

SELECT [country] as country
      ,[Hdi2022] as HDI
into HDI_2024
  FROM [dbo].[hdi_2024$]


select *
from HDI_2024



----------------------------------------------------

select *
from [summary$]

select distinct Country
from [summary$]

-----------------------------------------------all tables - need to combined --------------------
select *
from events_athletes_2024

select *
from total_medals_2024

select *
from population_growth_percentages_2024

select *
from all_2024_gdps

select *
from gni_per_capita_2024

select *
from HDI_2024




-----------------------------

alter table total_medals_2024
add Events_Count float , Total_Athletes float

UPDATE tm
SET tm.Events_Count = ea.Events_Count,
    tm.Total_Athletes = ea.Total_Athletes
FROM total_medals_2024 tm
JOIN events_athletes_2024 ea
    ON tm.country_code = ea.country_code
    AND tm.country = ea.country;




------------
alter table total_medals_2024
add population_total float , population_growth float , Population_Percentage float

select *
from population_growth_percentages_2024

UPDATE tm
SET tm.population_total = ea.population_total,
    tm.population_growth = ea.population_growth,
	tm.Population_Percentage = ea.Population_Percentage
FROM total_medals_2024 tm
JOIN population_growth_percentages_2024 ea
    ON tm.country_code = ea.country_code

UPDATE tm
SET tm.population_total = ea.population_total,
    tm.population_growth = ea.population_growth,
	tm.Population_Percentage = ea.Population_Percentage
FROM total_medals_2024 tm
JOIN population_growth_percentages_2024 ea
    ON tm.country = ea.country





select *
from total_medals_2024
where population_total is null

update population_growth_percentages_2024
set country_code = 'IRI'
where country like '%iran%'



update population_growth_percentages_2024
set country_code = 'IRI'
where country like '%iran%'

update population_growth_percentages_2024
set country ='Chinese Taipei'
where country like '%taiwan%'

select *
from population_growth_percentages_2024
where country like '%Kos%'


-----------------------------------------------------

select *
from all_2024_gdps

alter table all_2024_gdps
add country_code varchar(255)

UPDATE all_2024_gdps
SET country_code = CASE
    WHEN country = 'Albania' THEN 'ALB'
    WHEN country = 'Algeria' THEN 'DZA'
    WHEN country = 'Andorra' THEN 'AND'
    WHEN country = 'Angola' THEN 'AGO'
    WHEN country = 'Antigua and Barbuda' THEN 'ATG'
    WHEN country = 'Argentina' THEN 'ARG'
    WHEN country = 'Armenia' THEN 'ARM'
    WHEN country = 'Aruba' THEN 'ABW'
    WHEN country = 'Australia' THEN 'AUS'
    WHEN country = 'Austria' THEN 'AUT'
    WHEN country = 'Azerbaijan' THEN 'AZE'
    WHEN country = 'Bahamas, The' THEN 'BHS'
    WHEN country = 'Bahrain' THEN 'BHR'
    WHEN country = 'Bangladesh' THEN 'BGD'
    WHEN country = 'Barbados' THEN 'BRB'
    WHEN country = 'Belarus' THEN 'BLR'
    WHEN country = 'Belgium' THEN 'BEL'
    WHEN country = 'Belize' THEN 'BLZ'
    WHEN country = 'Benin' THEN 'BEN'
    WHEN country = 'Bhutan' THEN 'BTN'
    WHEN country = 'Bolivia' THEN 'BOL'
    WHEN country = 'Bosnia and Herzegovina' THEN 'BIH'
    WHEN country = 'Botswana' THEN 'BWA'
    WHEN country = 'Brazil' THEN 'BRA'
    WHEN country = 'Brunei Darussalam' THEN 'BRN'
    WHEN country = 'Bulgaria' THEN 'BGR'
    WHEN country = 'Burkina Faso' THEN 'BFA'
    WHEN country = 'Burundi' THEN 'BDI'
    WHEN country = 'Cabo Verde' THEN 'CPV'
    WHEN country = 'Cambodia' THEN 'KHM'
    WHEN country = 'Cameroon' THEN 'CMR'
    WHEN country = 'Canada' THEN 'CAN'
    WHEN country = 'Central African Republic' THEN 'CAF'
    WHEN country = 'Chad' THEN 'TCD'
    WHEN country = 'Chile' THEN 'CHL'
    WHEN country = 'China, People''s Republic of' THEN 'CHN'
    WHEN country = 'Colombia' THEN 'COL'
    WHEN country = 'Comoros' THEN 'COM'
    WHEN country = 'Congo, Dem. Rep. of the' THEN 'COD'
    WHEN country = 'Congo, Republic of' THEN 'COG'
    WHEN country = 'Costa Rica' THEN 'CRI'
    WHEN country = 'Côte d''Ivoire' THEN 'CIV'
    WHEN country = 'Croatia' THEN 'HRV'
    WHEN country = 'Cyprus' THEN 'CYP'
    WHEN country = 'Czech Republic' THEN 'CZE'
    WHEN country = 'Denmark' THEN 'DNK'
    WHEN country = 'Djibouti' THEN 'DJI'
    WHEN country = 'Dominica' THEN 'DMA'
    WHEN country = 'Dominican Republic' THEN 'DOM'
    WHEN country = 'Ecuador' THEN 'ECU'
    WHEN country = 'Egypt' THEN 'EGY'
    WHEN country = 'El Salvador' THEN 'SLV'
    WHEN country = 'Equatorial Guinea' THEN 'GNQ'
    WHEN country = 'Estonia' THEN 'EST'
    WHEN country = 'Eswatini' THEN 'SWZ'
    WHEN country = 'Ethiopia' THEN 'ETH'
    WHEN country = 'Fiji' THEN 'FJI'
    WHEN country = 'Finland' THEN 'FIN'
    WHEN country = 'France' THEN 'FRA'
    WHEN country = 'Gabon' THEN 'GAB'
    WHEN country = 'Gambia, The' THEN 'GMB'
    WHEN country = 'Georgia' THEN 'GEO'
    WHEN country = 'Germany' THEN 'DEU'
    WHEN country = 'Ghana' THEN 'GHA'
    WHEN country = 'Greece' THEN 'GRC'
    WHEN country = 'Grenada' THEN 'GRD'
    WHEN country = 'Guatemala' THEN 'GTM'
    WHEN country = 'Guinea' THEN 'GIN'
    WHEN country = 'Guinea-Bissau' THEN 'GNB'
    WHEN country = 'Guyana' THEN 'GUY'
    WHEN country = 'Haiti' THEN 'HTI'
    WHEN country = 'Honduras' THEN 'HND'
    WHEN country = 'Hong Kong SAR' THEN 'HKG'
    WHEN country = 'Hungary' THEN 'HUN'
    WHEN country = 'Iceland' THEN 'ISL'
    WHEN country = 'India' THEN 'IND'
    WHEN country = 'Indonesia' THEN 'IDN'
    WHEN country = 'Iran' THEN 'IRI'
    WHEN country = 'Iraq' THEN 'IRQ'
    WHEN country = 'Ireland' THEN 'IRL'
    WHEN country = 'Israel' THEN 'ISR'
    WHEN country = 'Italy' THEN 'ITA'
    WHEN country = 'Jamaica' THEN 'JAM'
    WHEN country = 'Japan' THEN 'JPN'
    WHEN country = 'Jordan' THEN 'JOR'
    WHEN country = 'Kazakhstan' THEN 'KAZ'
    WHEN country = 'Kenya' THEN 'KEN'
    WHEN country = 'Kiribati' THEN 'KIR'
    WHEN country = 'Korea, Republic of' THEN 'KOR'
    WHEN country = 'Kosovo' THEN 'XKX'
    WHEN country = 'Kuwait' THEN 'KWT'
    WHEN country = 'Kyrgyz Republic' THEN 'KGZ'
    WHEN country = 'Lao P.D.R.' THEN 'LAO'
    WHEN country = 'Latvia' THEN 'LVA'
    WHEN country = 'Lesotho' THEN 'LSO'
    WHEN country = 'Liberia' THEN 'LBR'
    WHEN country = 'Libya' THEN 'LBY'
    WHEN country = 'Lithuania' THEN 'LTU'
    WHEN country = 'Luxembourg' THEN 'LUX'
    WHEN country = 'Macao SAR' THEN 'MAC'
    WHEN country = 'Madagascar' THEN 'MDG'
    WHEN country = 'Malawi' THEN 'MWI'
    WHEN country = 'Malaysia' THEN 'MYS'
    WHEN country = 'Maldives' THEN 'MDV'
    WHEN country = 'Mali' THEN 'MLI'
    WHEN country = 'Malta' THEN 'MLT'
    WHEN country = 'Marshall Islands' THEN 'MHL'
    WHEN country = 'Mauritania' THEN 'MRT'
    WHEN country = 'Mauritius' THEN 'MUS'
    WHEN country = 'Mexico' THEN 'MEX'
    WHEN country = 'Micronesia, Fed. States of' THEN 'FSM'
    WHEN country = 'Moldova' THEN 'MDA'
    WHEN country = 'Mongolia' THEN 'MNG'
    WHEN country = 'Montenegro' THEN 'MNE'
    WHEN country = 'Morocco' THEN 'MAR'
    WHEN country = 'Mozambique' THEN 'MOZ'
    WHEN country = 'Myanmar' THEN 'MMR'
    WHEN country = 'Namibia' THEN 'NAM'
    WHEN country = 'Nauru' THEN 'NRU'
    WHEN country = 'Nepal' THEN 'NPL'
    WHEN country = 'Netherlands' THEN 'NLD'
    WHEN country = 'New Zealand' THEN 'NZL'
    WHEN country = 'Nicaragua' THEN 'NIC'
    WHEN country = 'Niger' THEN 'NER'
    WHEN country = 'Nigeria' THEN 'NGA'
    WHEN country = 'North Macedonia' THEN 'MKD'
    WHEN country = 'Norway' THEN 'NOR'
    WHEN country = 'Oman' THEN 'OMN'
    WHEN country = 'Palau' THEN 'PLW'
    WHEN country = 'Panama' THEN 'PAN'
    WHEN country = 'Papua New Guinea' THEN 'PNG'
    WHEN country = 'Paraguay' THEN 'PRY'
    WHEN country = 'Peru' THEN 'PER'
    WHEN country = 'Philippines' THEN 'PHL'
    WHEN country = 'Poland' THEN 'POL'
    WHEN country = 'Portugal' THEN 'PRT'
    WHEN country = 'Puerto Rico' THEN 'PRI'
    WHEN country = 'Qatar' THEN 'QAT'
    WHEN country = 'Romania' THEN 'ROU'
    WHEN country = 'Russian Federation' THEN 'RUS'
    WHEN country = 'Rwanda' THEN 'RWA'
    WHEN country = 'Saint Kitts and Nevis' THEN 'KNA'
    WHEN country = 'Saint Lucia' THEN 'LCA'
    WHEN country = 'Saint Vincent and the Grenadines' THEN 'VCT'
    WHEN country = 'Samoa' THEN 'WSM'
    WHEN country = 'San Marino' THEN 'SMR'
    WHEN country = 'São Tomé and Príncipe' THEN 'STP'
    WHEN country = 'Saudi Arabia' THEN 'SAU'
    WHEN country = 'Senegal' THEN 'SEN'
    WHEN country = 'Serbia' THEN 'SRB'
    WHEN country = 'Seychelles' THEN 'SYC'
    WHEN country = 'Sierra Leone' THEN 'SLE'
    WHEN country = 'Singapore' THEN 'SGP'
    WHEN country = 'Slovak Republic' THEN 'SVK'
    WHEN country = 'Slovenia' THEN 'SVN'
    WHEN country = 'Solomon Islands' THEN 'SLB'
    WHEN country = 'Somalia' THEN 'SOM'
    WHEN country = 'South Africa' THEN 'ZAF'
    WHEN country = 'South Sudan, Republic of' THEN 'SSD'
    WHEN country = 'Spain' THEN 'ESP'
    WHEN country = 'Sudan' THEN 'SDN'
    WHEN country = 'Suriname' THEN 'SUR'
    WHEN country = 'Sweden' THEN 'SWE'
    WHEN country = 'Switzerland' THEN 'CHE'
    WHEN country = 'Taiwan Province of China' THEN 'TWN'
    WHEN country = 'Tajikistan' THEN 'TJK'
    WHEN country = 'Tanzania' THEN 'TZA'
    WHEN country = 'Thailand' THEN 'THA'
    WHEN country = 'Timor-Leste' THEN 'TLS'
    WHEN country = 'Togo' THEN 'TGO'
    WHEN country = 'Tonga' THEN 'TON'
    WHEN country = 'Trinidad and Tobago' THEN 'TTO'
    WHEN country = 'Tunisia' THEN 'TUN'
    WHEN country = 'Türkiye, Republic of' THEN 'TUR'
    WHEN country = 'Turkmenistan' THEN 'TKM'
    WHEN country = 'Tuvalu' THEN 'TUV'
    WHEN country = 'Uganda' THEN 'UGA'
    WHEN country = 'Ukraine' THEN 'UKR'
    WHEN country = 'United Arab Emirates' THEN 'ARE'
    WHEN country = 'United Kingdom' THEN 'GBR'
    WHEN country = 'United States' THEN 'USA'
    WHEN country = 'Uruguay' THEN 'URY'
    WHEN country = 'Uzbekistan' THEN 'UZB'
    WHEN country = 'Vanuatu' THEN 'VUT'
    WHEN country = 'Venezuela' THEN 'VEN'
    WHEN country = 'Vietnam' THEN 'VNM'
    WHEN country = 'Yemen' THEN 'YEM'
    WHEN country = 'Zambia' THEN 'ZMB'
    WHEN country = 'Zimbabwe' THEN 'ZWE'
    ELSE NULL
END;


select distinct country
from all_2024_gdps

alter table total_medals_2024
add GDP float , GDP_growth float , GDP_Percentage float , GDP_per_capita float

select *
from all_2024_gdps

select *
from total_medals_2024


UPDATE tm
SET tm.GDP = ea.GDP,
    tm.GDP_growth = ea.GDP_growth,
	tm.GDP_Percentage = ea.GDP_Percentage,
	tm.GDP_per_capita = ea.GDP_per_capita
FROM total_medals_2024 tm
JOIN all_2024_gdps ea
    ON tm.country= ea.country

UPDATE tm
SET tm.GDP = ea.GDP,
    tm.GDP_growth = ea.GDP_growth,
	tm.GDP_Percentage = ea.GDP_Percentage,
	tm.GDP_per_capita = ea.GDP_per_capita
FROM total_medals_2024 tm
JOIN all_2024_gdps ea
    ON tm.country_code= ea.country_code


update all_2024_gdps
set country_code ='TPE'
where country like '%taiwan%'



-----------------------------------------------------------------------------------------



select *
from gni_per_capita_2024

alter table gni_per_capita_2024
add country_code varchar(255)


UPDATE gni_per_capita_2024
SET country_code = CASE
    WHEN country = 'Albania' THEN 'ALB'
    WHEN country = 'Algeria' THEN 'DZA'
    WHEN country = 'Andorra' THEN 'AND'
    WHEN country = 'Angola' THEN 'AGO'
    WHEN country = 'Antigua and Barbuda' THEN 'ATG'
    WHEN country = 'Argentina' THEN 'ARG'
    WHEN country = 'Armenia' THEN 'ARM'
    WHEN country = 'Aruba' THEN 'ABW'
    WHEN country = 'Australia' THEN 'AUS'
    WHEN country = 'Austria' THEN 'AUT'
    WHEN country = 'Azerbaijan' THEN 'AZE'
    WHEN country = 'Bahamas, The' THEN 'BHS'
    WHEN country = 'Bahrain' THEN 'BHR'
    WHEN country = 'Bangladesh' THEN 'BGD'
    WHEN country = 'Barbados' THEN 'BRB'
    WHEN country = 'Belarus' THEN 'BLR'
    WHEN country = 'Belgium' THEN 'BEL'
    WHEN country = 'Belize' THEN 'BLZ'
    WHEN country = 'Benin' THEN 'BEN'
    WHEN country = 'Bhutan' THEN 'BTN'
    WHEN country = 'Bolivia' THEN 'BOL'
    WHEN country = 'Bosnia and Herzegovina' THEN 'BIH'
    WHEN country = 'Botswana' THEN 'BWA'
    WHEN country = 'Brazil' THEN 'BRA'
    WHEN country = 'Brunei Darussalam' THEN 'BRN'
    WHEN country = 'Bulgaria' THEN 'BGR'
    WHEN country = 'Burkina Faso' THEN 'BFA'
    WHEN country = 'Burundi' THEN 'BDI'
    WHEN country = 'Cabo Verde' THEN 'CPV'
    WHEN country = 'Cambodia' THEN 'KHM'
    WHEN country = 'Cameroon' THEN 'CMR'
    WHEN country = 'Canada' THEN 'CAN'
    WHEN country = 'Central African Republic' THEN 'CAF'
    WHEN country = 'Chad' THEN 'TCD'
    WHEN country = 'Chile' THEN 'CHL'
    WHEN country = 'China, People''s Republic of' THEN 'CHN'
    WHEN country = 'Colombia' THEN 'COL'
    WHEN country = 'Comoros' THEN 'COM'
    WHEN country = 'Congo, Dem. Rep. of the' THEN 'COD'
    WHEN country = 'Congo, Republic of' THEN 'COG'
    WHEN country = 'Costa Rica' THEN 'CRI'
    WHEN country = 'Côte d''Ivoire' THEN 'CIV'
    WHEN country = 'Croatia' THEN 'HRV'
    WHEN country = 'Cyprus' THEN 'CYP'
    WHEN country = 'Czech Republic' THEN 'CZE'
    WHEN country = 'Denmark' THEN 'DNK'
    WHEN country = 'Djibouti' THEN 'DJI'
    WHEN country = 'Dominica' THEN 'DMA'
    WHEN country = 'Dominican Republic' THEN 'DOM'
    WHEN country = 'Ecuador' THEN 'ECU'
    WHEN country = 'Egypt' THEN 'EGY'
    WHEN country = 'El Salvador' THEN 'SLV'
    WHEN country = 'Equatorial Guinea' THEN 'GNQ'
    WHEN country = 'Estonia' THEN 'EST'
    WHEN country = 'Eswatini' THEN 'SWZ'
    WHEN country = 'Ethiopia' THEN 'ETH'
    WHEN country = 'Fiji' THEN 'FJI'
    WHEN country = 'Finland' THEN 'FIN'
    WHEN country = 'France' THEN 'FRA'
    WHEN country = 'Gabon' THEN 'GAB'
    WHEN country = 'Gambia, The' THEN 'GMB'
    WHEN country = 'Georgia' THEN 'GEO'
    WHEN country = 'Germany' THEN 'DEU'
    WHEN country = 'Ghana' THEN 'GHA'
    WHEN country = 'Greece' THEN 'GRC'
    WHEN country = 'Grenada' THEN 'GRD'
    WHEN country = 'Guatemala' THEN 'GTM'
    WHEN country = 'Guinea' THEN 'GIN'
    WHEN country = 'Guinea-Bissau' THEN 'GNB'
    WHEN country = 'Guyana' THEN 'GUY'
    WHEN country = 'Haiti' THEN 'HTI'
    WHEN country = 'Honduras' THEN 'HND'
    WHEN country = 'Hong Kong SAR' THEN 'HKG'
    WHEN country = 'Hungary' THEN 'HUN'
    WHEN country = 'Iceland' THEN 'ISL'
    WHEN country = 'India' THEN 'IND'
    WHEN country = 'Indonesia' THEN 'IDN'
    WHEN country = 'Iran' THEN 'IRI'
    WHEN country = 'Iraq' THEN 'IRQ'
    WHEN country = 'Ireland' THEN 'IRL'
    WHEN country = 'Israel' THEN 'ISR'
    WHEN country = 'Italy' THEN 'ITA'
    WHEN country = 'Jamaica' THEN 'JAM'
    WHEN country = 'Japan' THEN 'JPN'
    WHEN country = 'Jordan' THEN 'JOR'
    WHEN country = 'Kazakhstan' THEN 'KAZ'
    WHEN country = 'Kenya' THEN 'KEN'
    WHEN country = 'Kiribati' THEN 'KIR'
    WHEN country = 'Korea, Republic of' THEN 'KOR'
    WHEN country = 'Kosovo' THEN 'XKX'
    WHEN country = 'Kuwait' THEN 'KWT'
    WHEN country = 'Kyrgyz Republic' THEN 'KGZ'
    WHEN country = 'Lao P.D.R.' THEN 'LAO'
    WHEN country = 'Latvia' THEN 'LVA'
    WHEN country = 'Lesotho' THEN 'LSO'
    WHEN country = 'Liberia' THEN 'LBR'
    WHEN country = 'Libya' THEN 'LBY'
    WHEN country = 'Lithuania' THEN 'LTU'
    WHEN country = 'Luxembourg' THEN 'LUX'
    WHEN country = 'Macao SAR' THEN 'MAC'
    WHEN country = 'Madagascar' THEN 'MDG'
    WHEN country = 'Malawi' THEN 'MWI'
    WHEN country = 'Malaysia' THEN 'MYS'
    WHEN country = 'Maldives' THEN 'MDV'
    WHEN country = 'Mali' THEN 'MLI'
    WHEN country = 'Malta' THEN 'MLT'
    WHEN country = 'Marshall Islands' THEN 'MHL'
    WHEN country = 'Mauritania' THEN 'MRT'
    WHEN country = 'Mauritius' THEN 'MUS'
    WHEN country = 'Mexico' THEN 'MEX'
    WHEN country = 'Micronesia, Fed. States of' THEN 'FSM'
    WHEN country = 'Moldova' THEN 'MDA'
    WHEN country = 'Mongolia' THEN 'MNG'
    WHEN country = 'Montenegro' THEN 'MNE'
    WHEN country = 'Morocco' THEN 'MAR'
    WHEN country = 'Mozambique' THEN 'MOZ'
    WHEN country = 'Myanmar' THEN 'MMR'
    WHEN country = 'Namibia' THEN 'NAM'
    WHEN country = 'Nauru' THEN 'NRU'
    WHEN country = 'Nepal' THEN 'NPL'
    WHEN country = 'Netherlands' THEN 'NLD'
    WHEN country = 'New Zealand' THEN 'NZL'
    WHEN country = 'Nicaragua' THEN 'NIC'
    WHEN country = 'Niger' THEN 'NER'
    WHEN country = 'Nigeria' THEN 'NGA'
    WHEN country = 'North Macedonia' THEN 'MKD'
    WHEN country = 'Norway' THEN 'NOR'
    WHEN country = 'Oman' THEN 'OMN'
    WHEN country = 'Palau' THEN 'PLW'
    WHEN country = 'Panama' THEN 'PAN'
    WHEN country = 'Papua New Guinea' THEN 'PNG'
    WHEN country = 'Paraguay' THEN 'PRY'
    WHEN country = 'Peru' THEN 'PER'
    WHEN country = 'Philippines' THEN 'PHL'
    WHEN country = 'Poland' THEN 'POL'
    WHEN country = 'Portugal' THEN 'PRT'
    WHEN country = 'Puerto Rico' THEN 'PRI'
    WHEN country = 'Qatar' THEN 'QAT'
    WHEN country = 'Romania' THEN 'ROU'
    WHEN country = 'Russian Federation' THEN 'RUS'
    WHEN country = 'Rwanda' THEN 'RWA'
    WHEN country = 'Saint Kitts and Nevis' THEN 'KNA'
    WHEN country = 'Saint Lucia' THEN 'LCA'
    WHEN country = 'Saint Vincent and the Grenadines' THEN 'VCT'
    WHEN country = 'Samoa' THEN 'WSM'
    WHEN country = 'San Marino' THEN 'SMR'
    WHEN country = 'São Tomé and Príncipe' THEN 'STP'
    WHEN country = 'Saudi Arabia' THEN 'SAU'
    WHEN country = 'Senegal' THEN 'SEN'
    WHEN country = 'Serbia' THEN 'SRB'
    WHEN country = 'Seychelles' THEN 'SYC'
    WHEN country = 'Sierra Leone' THEN 'SLE'
    WHEN country = 'Singapore' THEN 'SGP'
    WHEN country = 'Slovak Republic' THEN 'SVK'
    WHEN country = 'Slovenia' THEN 'SVN'
    WHEN country = 'Solomon Islands' THEN 'SLB'
    WHEN country = 'Somalia' THEN 'SOM'
    WHEN country = 'South Africa' THEN 'ZAF'
    WHEN country = 'South Sudan, Republic of' THEN 'SSD'
    WHEN country = 'Spain' THEN 'ESP'
    WHEN country = 'Sudan' THEN 'SDN'
    WHEN country = 'Suriname' THEN 'SUR'
    WHEN country = 'Sweden' THEN 'SWE'
    WHEN country = 'Switzerland' THEN 'CHE'
    WHEN country = 'Taiwan Province of China' THEN 'TWN'
    WHEN country = 'Tajikistan' THEN 'TJK'
    WHEN country = 'Tanzania' THEN 'TZA'
    WHEN country = 'Thailand' THEN 'THA'
    WHEN country = 'Timor-Leste' THEN 'TLS'
    WHEN country = 'Togo' THEN 'TGO'
    WHEN country = 'Tonga' THEN 'TON'
    WHEN country = 'Trinidad and Tobago' THEN 'TTO'
    WHEN country = 'Tunisia' THEN 'TUN'
    WHEN country = 'Türkiye, Republic of' THEN 'TUR'
    WHEN country = 'Turkmenistan' THEN 'TKM'
    WHEN country = 'Tuvalu' THEN 'TUV'
    WHEN country = 'Uganda' THEN 'UGA'
    WHEN country = 'Ukraine' THEN 'UKR'
    WHEN country = 'United Arab Emirates' THEN 'ARE'
    WHEN country = 'United Kingdom' THEN 'GBR'
    WHEN country = 'United States' THEN 'USA'
    WHEN country = 'Uruguay' THEN 'URY'
    WHEN country = 'Uzbekistan' THEN 'UZB'
    WHEN country = 'Vanuatu' THEN 'VUT'
    WHEN country = 'Venezuela' THEN 'VEN'
    WHEN country = 'Vietnam' THEN 'VNM'
    WHEN country = 'Yemen' THEN 'YEM'
    WHEN country = 'Zambia' THEN 'ZMB'
    WHEN country = 'Zimbabwe' THEN 'ZWE'
	WHEN country = 'China' THEN 'CHN'
    WHEN country = 'Pakistan' THEN 'PAK'
    WHEN country = 'Russia' THEN 'RUS'
    WHEN country = 'DR Congo' THEN 'COD'
    WHEN country = 'South Korea' THEN 'KOR'
    WHEN country = 'Afghanistan' THEN 'AFG'
    WHEN country = 'Ivory Coast' THEN 'CIV'
    WHEN country = 'Syria' THEN 'SYR'
    WHEN country = 'Sri Lanka' THEN 'LKA'
    WHEN country = 'South Sudan' THEN 'SSD'
    WHEN country = 'Cuba' THEN 'CUB'
    WHEN country = 'Laos' THEN 'LAO'
    WHEN country = 'Hong Kong' THEN 'HKG'
    WHEN country = 'Kyrgyzstan' THEN 'KGZ'
    WHEN country = 'Republic of the Congo' THEN 'COG'
    WHEN country = 'Lebanon' THEN 'LBN'
    WHEN country = 'Eritrea' THEN 'ERI'
    WHEN country = 'Gambia' THEN 'GMB'
    WHEN country = 'Cape Verde' THEN 'CPV'
    WHEN country = 'Brunei' THEN 'BRN'
    WHEN country = 'Bahamas' THEN 'BHS'
    WHEN country = 'New Caledonia' THEN 'NCL'
    WHEN country = 'French Polynesia' THEN 'PYF'
    WHEN country = 'Sao Tome and Principe' THEN 'STP'
    WHEN country = 'Curacao' THEN 'CUW'
    WHEN country = 'Micronesia' THEN 'FSM'
    WHEN country = 'Isle of Man' THEN 'IMN'
    WHEN country = 'Cayman Islands' THEN 'CYM'
    WHEN country = 'Bermuda' THEN 'BMU'
    WHEN country = 'Greenland' THEN 'GRL'
    WHEN country = 'Faroe Islands' THEN 'FRO'
    WHEN country = 'Turks and Caicos Islands' THEN 'TCA'
    WHEN country = 'Sint Maarten' THEN 'SXM'
    WHEN country = 'Liechtenstein' THEN 'LIE'
    ELSE NULL
END;

select *
from total_medals_2024

alter table total_medals_2024
add GNI_per_capita float

select *
from gni_per_capita_2024
where country_code is null

UPDATE tm
SET tm.GNI_per_capita = ea.GNI_per_capita
FROM total_medals_2024 tm
JOIN gni_per_capita_2024 ea
    ON tm.country= ea.country


UPDATE tm
SET tm.GNI_per_capita = ea.GNI_per_capita
FROM total_medals_2024 tm
JOIN gni_per_capita_2024 ea
    ON tm.country_code= ea.country_code


----------------------------add HDI index --------------------


select *
from HDI_2024

alter table HDI_2024
add country_code varchar(255)

UPDATE HDI_2024
SET country_code = CASE
    WHEN country = 'Albania' THEN 'ALB'
    WHEN country = 'Algeria' THEN 'DZA'
    WHEN country = 'Andorra' THEN 'AND'
    WHEN country = 'Angola' THEN 'AGO'
    WHEN country = 'Antigua and Barbuda' THEN 'ATG'
    WHEN country = 'Argentina' THEN 'ARG'
    WHEN country = 'Armenia' THEN 'ARM'
    WHEN country = 'Aruba' THEN 'ABW'
    WHEN country = 'Australia' THEN 'AUS'
    WHEN country = 'Austria' THEN 'AUT'
    WHEN country = 'Azerbaijan' THEN 'AZE'
    WHEN country = 'Bahamas, The' THEN 'BHS'
    WHEN country = 'Bahrain' THEN 'BHR'
    WHEN country = 'Bangladesh' THEN 'BGD'
    WHEN country = 'Barbados' THEN 'BRB'
    WHEN country = 'Belarus' THEN 'BLR'
    WHEN country = 'Belgium' THEN 'BEL'
    WHEN country = 'Belize' THEN 'BLZ'
    WHEN country = 'Benin' THEN 'BEN'
    WHEN country = 'Bhutan' THEN 'BTN'
    WHEN country = 'Bolivia' THEN 'BOL'
    WHEN country = 'Bosnia and Herzegovina' THEN 'BIH'
    WHEN country = 'Botswana' THEN 'BWA'
    WHEN country = 'Brazil' THEN 'BRA'
    WHEN country = 'Brunei Darussalam' THEN 'BRN'
    WHEN country = 'Bulgaria' THEN 'BGR'
    WHEN country = 'Burkina Faso' THEN 'BFA'
    WHEN country = 'Burundi' THEN 'BDI'
    WHEN country = 'Cabo Verde' THEN 'CPV'
    WHEN country = 'Cambodia' THEN 'KHM'
    WHEN country = 'Cameroon' THEN 'CMR'
    WHEN country = 'Canada' THEN 'CAN'
    WHEN country = 'Central African Republic' THEN 'CAF'
    WHEN country = 'Chad' THEN 'TCD'
    WHEN country = 'Chile' THEN 'CHL'
    WHEN country = 'China, People''s Republic of' THEN 'CHN'
    WHEN country = 'Colombia' THEN 'COL'
    WHEN country = 'Comoros' THEN 'COM'
    WHEN country = 'Congo, Dem. Rep. of the' THEN 'COD'
    WHEN country = 'Congo, Republic of' THEN 'COG'
    WHEN country = 'Costa Rica' THEN 'CRI'
    WHEN country = 'Côte d''Ivoire' THEN 'CIV'
    WHEN country = 'Croatia' THEN 'HRV'
    WHEN country = 'Cyprus' THEN 'CYP'
    WHEN country = 'Czech Republic' THEN 'CZE'
    WHEN country = 'Denmark' THEN 'DNK'
    WHEN country = 'Djibouti' THEN 'DJI'
    WHEN country = 'Dominica' THEN 'DMA'
    WHEN country = 'Dominican Republic' THEN 'DOM'
    WHEN country = 'Ecuador' THEN 'ECU'
    WHEN country = 'Egypt' THEN 'EGY'
    WHEN country = 'El Salvador' THEN 'SLV'
    WHEN country = 'Equatorial Guinea' THEN 'GNQ'
    WHEN country = 'Estonia' THEN 'EST'
    WHEN country = 'Eswatini' THEN 'SWZ'
    WHEN country = 'Ethiopia' THEN 'ETH'
    WHEN country = 'Fiji' THEN 'FJI'
    WHEN country = 'Finland' THEN 'FIN'
    WHEN country = 'France' THEN 'FRA'
    WHEN country = 'Gabon' THEN 'GAB'
    WHEN country = 'Gambia, The' THEN 'GMB'
    WHEN country = 'Georgia' THEN 'GEO'
    WHEN country = 'Germany' THEN 'DEU'
    WHEN country = 'Ghana' THEN 'GHA'
    WHEN country = 'Greece' THEN 'GRC'
    WHEN country = 'Grenada' THEN 'GRD'
    WHEN country = 'Guatemala' THEN 'GTM'
    WHEN country = 'Guinea' THEN 'GIN'
    WHEN country = 'Guinea-Bissau' THEN 'GNB'
    WHEN country = 'Guyana' THEN 'GUY'
    WHEN country = 'Haiti' THEN 'HTI'
    WHEN country = 'Honduras' THEN 'HND'
    WHEN country = 'Hong Kong SAR' THEN 'HKG'
    WHEN country = 'Hungary' THEN 'HUN'
    WHEN country = 'Iceland' THEN 'ISL'
    WHEN country = 'India' THEN 'IND'
    WHEN country = 'Indonesia' THEN 'IDN'
    WHEN country = 'Iran' THEN 'IRI'
    WHEN country = 'Iraq' THEN 'IRQ'
    WHEN country = 'Ireland' THEN 'IRL'
    WHEN country = 'Israel' THEN 'ISR'
    WHEN country = 'Italy' THEN 'ITA'
    WHEN country = 'Jamaica' THEN 'JAM'
    WHEN country = 'Japan' THEN 'JPN'
    WHEN country = 'Jordan' THEN 'JOR'
    WHEN country = 'Kazakhstan' THEN 'KAZ'
    WHEN country = 'Kenya' THEN 'KEN'
    WHEN country = 'Kiribati' THEN 'KIR'
    WHEN country = 'Korea, Republic of' THEN 'KOR'
    WHEN country = 'Kosovo' THEN 'XKX'
    WHEN country = 'Kuwait' THEN 'KWT'
    WHEN country = 'Kyrgyz Republic' THEN 'KGZ'
    WHEN country = 'Lao P.D.R.' THEN 'LAO'
    WHEN country = 'Latvia' THEN 'LVA'
    WHEN country = 'Lesotho' THEN 'LSO'
    WHEN country = 'Liberia' THEN 'LBR'
    WHEN country = 'Libya' THEN 'LBY'
    WHEN country = 'Lithuania' THEN 'LTU'
    WHEN country = 'Luxembourg' THEN 'LUX'
    WHEN country = 'Macao SAR' THEN 'MAC'
    WHEN country = 'Madagascar' THEN 'MDG'
    WHEN country = 'Malawi' THEN 'MWI'
    WHEN country = 'Malaysia' THEN 'MYS'
    WHEN country = 'Maldives' THEN 'MDV'
    WHEN country = 'Mali' THEN 'MLI'
    WHEN country = 'Malta' THEN 'MLT'
    WHEN country = 'Marshall Islands' THEN 'MHL'
    WHEN country = 'Mauritania' THEN 'MRT'
    WHEN country = 'Mauritius' THEN 'MUS'
    WHEN country = 'Mexico' THEN 'MEX'
    WHEN country = 'Micronesia, Fed. States of' THEN 'FSM'
    WHEN country = 'Moldova' THEN 'MDA'
    WHEN country = 'Mongolia' THEN 'MNG'
    WHEN country = 'Montenegro' THEN 'MNE'
    WHEN country = 'Morocco' THEN 'MAR'
    WHEN country = 'Mozambique' THEN 'MOZ'
    WHEN country = 'Myanmar' THEN 'MMR'
    WHEN country = 'Namibia' THEN 'NAM'
    WHEN country = 'Nauru' THEN 'NRU'
    WHEN country = 'Nepal' THEN 'NPL'
    WHEN country = 'Netherlands' THEN 'NLD'
    WHEN country = 'New Zealand' THEN 'NZL'
    WHEN country = 'Nicaragua' THEN 'NIC'
    WHEN country = 'Niger' THEN 'NER'
    WHEN country = 'Nigeria' THEN 'NGA'
    WHEN country = 'North Macedonia' THEN 'MKD'
    WHEN country = 'Norway' THEN 'NOR'
    WHEN country = 'Oman' THEN 'OMN'
    WHEN country = 'Palau' THEN 'PLW'
    WHEN country = 'Panama' THEN 'PAN'
    WHEN country = 'Papua New Guinea' THEN 'PNG'
    WHEN country = 'Paraguay' THEN 'PRY'
    WHEN country = 'Peru' THEN 'PER'
    WHEN country = 'Philippines' THEN 'PHL'
    WHEN country = 'Poland' THEN 'POL'
    WHEN country = 'Portugal' THEN 'PRT'
    WHEN country = 'Puerto Rico' THEN 'PRI'
    WHEN country = 'Qatar' THEN 'QAT'
    WHEN country = 'Romania' THEN 'ROU'
    WHEN country = 'Russian Federation' THEN 'RUS'
    WHEN country = 'Rwanda' THEN 'RWA'
    WHEN country = 'Saint Kitts and Nevis' THEN 'KNA'
    WHEN country = 'Saint Lucia' THEN 'LCA'
    WHEN country = 'Saint Vincent and the Grenadines' THEN 'VCT'
    WHEN country = 'Samoa' THEN 'WSM'
    WHEN country = 'San Marino' THEN 'SMR'
    WHEN country = 'São Tomé and Príncipe' THEN 'STP'
    WHEN country = 'Saudi Arabia' THEN 'SAU'
    WHEN country = 'Senegal' THEN 'SEN'
    WHEN country = 'Serbia' THEN 'SRB'
    WHEN country = 'Seychelles' THEN 'SYC'
    WHEN country = 'Sierra Leone' THEN 'SLE'
    WHEN country = 'Singapore' THEN 'SGP'
    WHEN country = 'Slovak Republic' THEN 'SVK'
    WHEN country = 'Slovenia' THEN 'SVN'
    WHEN country = 'Solomon Islands' THEN 'SLB'
    WHEN country = 'Somalia' THEN 'SOM'
    WHEN country = 'South Africa' THEN 'ZAF'
    WHEN country = 'South Sudan, Republic of' THEN 'SSD'
    WHEN country = 'Spain' THEN 'ESP'
    WHEN country = 'Sudan' THEN 'SDN'
    WHEN country = 'Suriname' THEN 'SUR'
    WHEN country = 'Sweden' THEN 'SWE'
    WHEN country = 'Switzerland' THEN 'CHE'
    WHEN country = 'Taiwan Province of China' THEN 'TWN'
    WHEN country = 'Tajikistan' THEN 'TJK'
    WHEN country = 'Tanzania' THEN 'TZA'
    WHEN country = 'Thailand' THEN 'THA'
    WHEN country = 'Timor-Leste' THEN 'TLS'
    WHEN country = 'Togo' THEN 'TGO'
    WHEN country = 'Tonga' THEN 'TON'
    WHEN country = 'Trinidad and Tobago' THEN 'TTO'
    WHEN country = 'Tunisia' THEN 'TUN'
    WHEN country = 'Türkiye, Republic of' THEN 'TUR'
    WHEN country = 'Turkmenistan' THEN 'TKM'
    WHEN country = 'Tuvalu' THEN 'TUV'
    WHEN country = 'Uganda' THEN 'UGA'
    WHEN country = 'Ukraine' THEN 'UKR'
    WHEN country = 'United Arab Emirates' THEN 'ARE'
    WHEN country = 'United Kingdom' THEN 'GBR'
    WHEN country = 'United States' THEN 'USA'
    WHEN country = 'Uruguay' THEN 'URY'
    WHEN country = 'Uzbekistan' THEN 'UZB'
    WHEN country = 'Vanuatu' THEN 'VUT'
    WHEN country = 'Venezuela' THEN 'VEN'
    WHEN country = 'Vietnam' THEN 'VNM'
    WHEN country = 'Yemen' THEN 'YEM'
    WHEN country = 'Zambia' THEN 'ZMB'
    WHEN country = 'Zimbabwe' THEN 'ZWE'
	WHEN country = 'China' THEN 'CHN'
    WHEN country = 'Pakistan' THEN 'PAK'
    WHEN country = 'Russia' THEN 'RUS'
    WHEN country = 'DR Congo' THEN 'COD'
    WHEN country = 'South Korea' THEN 'KOR'
    WHEN country = 'Afghanistan' THEN 'AFG'
    WHEN country = 'Ivory Coast' THEN 'CIV'
    WHEN country = 'Syria' THEN 'SYR'
    WHEN country = 'Sri Lanka' THEN 'LKA'
    WHEN country = 'South Sudan' THEN 'SSD'
    WHEN country = 'Cuba' THEN 'CUB'
    WHEN country = 'Laos' THEN 'LAO'
    WHEN country = 'Hong Kong' THEN 'HKG'
    WHEN country = 'Kyrgyzstan' THEN 'KGZ'
    WHEN country = 'Republic of the Congo' THEN 'COG'
    WHEN country = 'Lebanon' THEN 'LBN'
    WHEN country = 'Eritrea' THEN 'ERI'
    WHEN country = 'Gambia' THEN 'GMB'
    WHEN country = 'Cape Verde' THEN 'CPV'
    WHEN country = 'Brunei' THEN 'BRN'
    WHEN country = 'Bahamas' THEN 'BHS'
    WHEN country = 'New Caledonia' THEN 'NCL'
    WHEN country = 'French Polynesia' THEN 'PYF'
    WHEN country = 'Sao Tome and Principe' THEN 'STP'
    WHEN country = 'Curacao' THEN 'CUW'
    WHEN country = 'Micronesia' THEN 'FSM'
    WHEN country = 'Isle of Man' THEN 'IMN'
    WHEN country = 'Cayman Islands' THEN 'CYM'
    WHEN country = 'Bermuda' THEN 'BMU'
    WHEN country = 'Greenland' THEN 'GRL'
    WHEN country = 'Faroe Islands' THEN 'FRO'
    WHEN country = 'Turks and Caicos Islands' THEN 'TCA'
    WHEN country = 'Sint Maarten' THEN 'SXM'
    WHEN country = 'Liechtenstein' THEN 'LIE'
    ELSE NULL
END;


select *
from HDI_2024

select *
from total_medals_2024

alter table total_medals_2024
add HDI float





UPDATE total_medals_2024
SET country = country_long
where country is null



----------------add Host or not -----------------------
alter table total_medals_2024
add Host_or_Not float


select *
from total_medals_2024

update total_medals_2024
set Host_or_Not = 1
where country = 'France'


update total_medals_2024
set Host_or_Not = 0
where Host_or_Not is null


---------------------------------------------


alter table total_medals_2024
add Year float

update total_medals_2024
set Year = 2024



------------add regions -------------


SELECT [Entity]
      ,[Code]
      ,[Year]
      ,[World Region according to the World Bank]
  FROM [dbo].['world-regions-according-to-the-$']

GO



alter table total_medals_2024
add Region varchar(255)


UPDATE tm
SET tm.Region = ea.[World Region according to the World Bank]
FROM total_medals_2024 tm
JOIN ['world-regions-according-to-the-$'] ea
    ON tm.country= ea.[Entity]


UPDATE tm
SET tm.Region = ea.[World Region according to the World Bank]
FROM total_medals_2024 tm
JOIN ['world-regions-according-to-the-$'] ea
    ON tm.country_code= ea.Code

select *
from total_medals_2024
where Region is null


select * 
from [summary$]


update total_medals_2024
set Region ='Middle East and North Africa'
where country_code = 'IRI'


update total_medals_2024
set Region ='East Asia and Pacific'
where country_code = 'TPE'

----------------------------------------------------------
update total_medals_2024
set GNI_per_capita = 33565
where country_code = 'TPE'

update total_medals_2024
set HDI=0.926
where country_code = 'TPE'


select *
into total_medals_2024_1
from total_medals_2024



update total_medals_2024_1
set GNI_per_capita =10630
where country_code = 'TUR'

select * 
from [summary$]



---------delete null rows------------------

select *
from total_medals_2024_1

DELETE FROM total_medals_2024_1
WHERE GDP IS NULL
   OR population_growth IS NULL
   OR HDI IS NULL
   OR GNI_per_capita IS NULL


----------------------------------------------- Rename columns -------

EXEC sp_rename 'total_medals_2024_1.country_code', 'Country_Code', 'COLUMN';
EXEC sp_rename 'total_medals_2024_1.country', 'Country', 'COLUMN';
EXEC sp_rename 'total_medals_2024_1.Gold Medal', 'Gold_Medals', 'COLUMN';
EXEC sp_rename 'total_medals_2024_1.Silver Medal', 'Silver_Medals', 'COLUMN';
EXEC sp_rename 'total_medals_2024_1.Bronze Medal', 'Bronze_Medals', 'COLUMN';
EXEC sp_rename 'total_medals_2024_1.Total', 'Total_Medals', 'COLUMN';
EXEC sp_rename 'total_medals_2024_1.country', 'Country', 'COLUMN';

-----------------------add same country and country code ------------------
select *
into total_medals_2024_2
from total_medals_2024_1

select *
from total_medals_2024_2

select distinct Country , Country_Code
from [summary$]


UPDATE total_medals_2024_2
SET Country = CASE 
    WHEN Country_Code = 'AFG' THEN 'Afghanistan'
    WHEN Country_Code = 'ALG' THEN 'Algeria'
    WHEN Country_Code = 'ARG' THEN 'Argentina'
    WHEN Country_Code = 'ARM' THEN 'Armenia'
    WHEN Country_Code = 'AUS' THEN 'Australia'
    WHEN Country_Code = 'AUT' THEN 'Austria'
    WHEN Country_Code = 'AZE' THEN 'Azerbaijan'
    WHEN Country_Code = 'BHS' THEN 'Bahamas'
    WHEN Country_Code = 'BRN' THEN 'Bahrain'
    WHEN Country_Code = 'BAR' THEN 'Barbados'
    WHEN Country_Code = 'BLR' THEN 'Belarus'
    WHEN Country_Code = 'BEL' THEN 'Belgium'
    WHEN Country_Code = 'BOT' THEN 'Botswana'
    WHEN Country_Code = 'BRA' THEN 'Brazil'
    WHEN Country_Code = 'BUL' THEN 'Bulgaria'
    WHEN Country_Code = 'BFA' THEN 'Burkina Faso'
    WHEN Country_Code = 'BDI' THEN 'Burundi'
    WHEN Country_Code = 'CMR' THEN 'Cameroon'
    WHEN Country_Code = 'CAN' THEN 'Canada'
    WHEN Country_Code = 'CHI' THEN 'Chile'
    WHEN Country_Code = 'CHN' THEN 'China'
    WHEN Country_Code = 'TPE' THEN 'Chinese Taipei'
    WHEN Country_Code = 'COL' THEN 'Colombia'
    WHEN Country_Code = 'CRC' THEN 'Costa Rica'
    WHEN Country_Code = 'CIV' THEN 'Côte d''Ivoire'
    WHEN Country_Code = 'CRO' THEN 'Croatia'
    WHEN Country_Code = 'CUB' THEN 'Cuba'
    WHEN Country_Code = 'CYP' THEN 'Cyprus'
    WHEN Country_Code = 'CZE' THEN 'Czech Republic'
    WHEN Country_Code = 'DEN' THEN 'Denmark'
    WHEN Country_Code = 'DOM' THEN 'Dominican Republic'
    WHEN Country_Code = 'ECU' THEN 'Ecuador'
    WHEN Country_Code = 'EGY' THEN 'Egypt'
    WHEN Country_Code = 'ERI' THEN 'Eritrea'
    WHEN Country_Code = 'EST' THEN 'Estonia'
    WHEN Country_Code = 'ETH' THEN 'Ethiopia'
    WHEN Country_Code = 'FIJ' THEN 'Fiji'
    WHEN Country_Code = 'FIN' THEN 'Finland'
    WHEN Country_Code = 'FRA' THEN 'France'
    WHEN Country_Code = 'GAB' THEN 'Gabon'
    WHEN Country_Code = 'GEO' THEN 'Georgia'
    WHEN Country_Code = 'GER' THEN 'Germany'
    WHEN Country_Code = 'GHA' THEN 'Ghana'
    WHEN Country_Code = 'GRE' THEN 'Greece'
    WHEN Country_Code = 'GRD' THEN 'Grenada'
    WHEN Country_Code = 'GUA' THEN 'Guatemala'
    WHEN Country_Code = 'HKG' THEN 'Hong Kong'
    WHEN Country_Code = 'HUN' THEN 'Hungary'
    WHEN Country_Code = 'ISL' THEN 'Iceland'
    WHEN Country_Code = 'IND' THEN 'India'
    WHEN Country_Code = 'INA' THEN 'Indonesia'
    WHEN Country_Code = 'IRN' THEN 'Iran'
    WHEN Country_Code = 'IRL' THEN 'Ireland'
    WHEN Country_Code = 'ISR' THEN 'Israel'
    WHEN Country_Code = 'ITA' THEN 'Italy'
    WHEN Country_Code = 'JAM' THEN 'Jamaica'
    WHEN Country_Code = 'JPN' THEN 'Japan'
    WHEN Country_Code = 'JOR' THEN 'Jordan'
    WHEN Country_Code = 'KAZ' THEN 'Kazakhstan'
    WHEN Country_Code = 'KEN' THEN 'Kenya'
    WHEN Country_Code = 'KOS' THEN 'Kosovo'
    WHEN Country_Code = 'KUW' THEN 'Kuwait'
    WHEN Country_Code = 'KGZ' THEN 'Kyrgyzstan'
    WHEN Country_Code = 'LVA' THEN 'Latvia'
    WHEN Country_Code = 'LTU' THEN 'Lithuania'
    WHEN Country_Code = 'MAS' THEN 'Malaysia'
    WHEN Country_Code = 'MRI' THEN 'Mauritius'
    WHEN Country_Code = 'MEX' THEN 'Mexico'
    WHEN Country_Code = 'MDA' THEN 'Moldova'
    WHEN Country_Code = 'MGL' THEN 'Mongolia'
    WHEN Country_Code = 'MNE' THEN 'Montenegro'
    WHEN Country_Code = 'MAR' THEN 'Morocco'
    WHEN Country_Code = 'MOZ' THEN 'Mozambique'
    WHEN Country_Code = 'NAM' THEN 'Namibia'
    WHEN Country_Code = 'NED' THEN 'Netherlands'
    WHEN Country_Code = 'NZL' THEN 'New Zealand'
    WHEN Country_Code = 'NGR' THEN 'Niger'
    WHEN Country_Code = 'NGA' THEN 'Nigeria'
    WHEN Country_Code = 'MKD' THEN 'North Macedonia'
    WHEN Country_Code = 'NOR' THEN 'Norway'
    WHEN Country_Code = 'PAK' THEN 'Pakistan'
    WHEN Country_Code = 'PAN' THEN 'Panama'
    WHEN Country_Code = 'PAR' THEN 'Paraguay'
    WHEN Country_Code = 'PER' THEN 'Peru'
    WHEN Country_Code = 'PHI' THEN 'Philippines'
    WHEN Country_Code = 'POL' THEN 'Poland'
    WHEN Country_Code = 'POR' THEN 'Portugal'
    WHEN Country_Code = 'PUR' THEN 'Puerto Rico'
    WHEN Country_Code = 'QAT' THEN 'Qatar'
    WHEN Country_Code = 'ROU' THEN 'Romania'
    WHEN Country_Code = 'RUS' THEN 'Russia'
    WHEN Country_Code = 'ROC' THEN 'Russian Olympic Committee'
    WHEN Country_Code = 'SMR' THEN 'San Marino'
    WHEN Country_Code = 'KSA' THEN 'Saudi Arabia'
    WHEN Country_Code = 'SRB' THEN 'Serbia'
    WHEN Country_Code = 'SGP' THEN 'Singapore'
    WHEN Country_Code = 'SVK' THEN 'Slovakia'
    WHEN Country_Code = 'SLO' THEN 'Slovenia'
    WHEN Country_Code = 'RSA' THEN 'South Africa'
    WHEN Country_Code = 'KOR' THEN 'South Korea'
    WHEN Country_Code = 'ESP' THEN 'Spain'
    WHEN Country_Code = 'SRI' THEN 'Sri Lanka'
    WHEN Country_Code = 'SDN' THEN 'Sudan'
    WHEN Country_Code = 'SUR' THEN 'Suriname'
    WHEN Country_Code = 'SWE' THEN 'Sweden'
    WHEN Country_Code = 'CHE' THEN 'Switzerland'
    WHEN Country_Code = 'SYR' THEN 'Syria'
    WHEN Country_Code = 'TJK' THEN 'Tajikistan'
    WHEN Country_Code = 'THA' THEN 'Thailand'
    WHEN Country_Code = 'TOG' THEN 'Togo'
    WHEN Country_Code = 'TON' THEN 'Tonga'
    WHEN Country_Code = 'TTO' THEN 'Trinidad and Tobago'
    WHEN Country_Code = 'TUN' THEN 'Tunisia'
    WHEN Country_Code = 'TUR' THEN 'Turkey'
    WHEN Country_Code = 'TKM' THEN 'Turkmenistan'
    WHEN Country_Code = 'UGA' THEN 'Uganda'
    WHEN Country_Code = 'UKR' THEN 'Ukraine'
    WHEN Country_Code = 'ARE' THEN 'United Arab Emirates'
    WHEN Country_Code = 'GBR' THEN 'United Kingdom'
    WHEN Country_Code = 'USA' THEN 'United States'
    WHEN Country_Code = 'URU' THEN 'Uruguay'
    WHEN Country_Code = 'UZB' THEN 'Uzbekistan'
    WHEN Country_Code = 'VEN' THEN 'Venezuela'
    WHEN Country_Code = 'VNM' THEN 'Vietnam'
    WHEN Country_Code = 'ZMB' THEN 'Zambia'
    WHEN Country_Code = 'ZWE' THEN 'Zimbabwe'
    
END;


select *
from total_medals_2024_2
where Country is null


select *
from [summary$]
where Country like '%Cabo Verde%'

update total_medals_2024_2
set Country_Code = 'IRN'
where Country_Code = 'IRI'


update total_medals_2024_2
set Country = 'Switzerland'
where Country_Code = 'SUI'



update total_medals_2024_2
set Country = 'Zambia'
where Country_Code = 'ZAM'


update total_medals_2024_2
set Country = 'Dominican Republic'
where Country_Code = 'DMA'

update total_medals_2024_2
set Country = 'Saint Lucia'
where Country_Code = 'LCA'

update total_medals_2024_2
set Country = 'Saint Lucia'
where Country_Code = 'LCA'


update total_medals_2024_2
set Country = 'Grenada'
where Country_Code = 'GRN'



select *
from total_medals_2024_2
where Country is null

update total_medals_2024_2
set Country = country_long
where Country is null

-----------------------------------------------------------------------------------------------
select *
into total_medals_2024_3
from total_medals_2024_2



------ drop column - country_long ---------------------

ALTER TABLE total_medals_2024_3
DROP COLUMN country_long


select *
from total_medals_2024_3



select *
from [summary$]





CREATE TABLE total_medals_2024_new (
    Year INT,
    Country NVARCHAR(255),
    Total_Medals float,
    Gold_Medals float,
    Silver_Medals float,
    Bronze_Medals float,
    Total_Athletes float,
    Events_Count float,
    Host_or_Not float,
    Country_Code NVARCHAR(255),
    population_total float,
    population_growth float,
    GNI_per_capita float,
    GDP float,
    GDP_growth float,
    Region NVARCHAR(255),
    GDP_per_capita float,
    Population_Percentage float,
    GDP_Percentage float,
    HDI float
);


INSERT INTO total_medals_2024_new (
    Year, Country, Total_Medals, Gold_Medals, Silver_Medals, Bronze_Medals,
    Total_Athletes, Events_Count, Host_or_Not, Country_Code, 
    population_total, population_growth, GNI_per_capita, GDP, 
    GDP_growth, Region, GDP_per_capita, Population_Percentage, 
    GDP_Percentage, HDI
)
SELECT 
    Year, Country, Total_Medals, Gold_Medals, Silver_Medals, Bronze_Medals,
    Total_Athletes, Events_Count, Host_or_Not, Country_Code, 
    population_total, population_growth, GNI_per_capita, GDP, 
    GDP_growth, Region, GDP_per_capita, Population_Percentage, 
    GDP_Percentage, HDI
FROM total_medals_2024_3;


--------------------------------------------------------------------------------------

CREATE TABLE summary_92_24 (
    Year float,
    Country NVARCHAR(255),
    Total_Medals float,
    Gold_Medals float,
    Silver_Medals float,
    Bronze_Medals float,
    Total_Athletes float,
    Events_Count float,
    Host_or_Not float,
    Country_Code NVARCHAR(255),
    population_total float,
    population_growth float,
    GNI_per_capita float,
    GDP float,
    GDP_growth float,
    Region NVARCHAR(255),
    GDP_per_capita float,
    Population_Percentage float,
    GDP_Percentage float,
    HDI float
);




select *
from total_medals_2024_new

select *
from [summary$]



INSERT INTO summary_92_24(
    Year, Country, Total_Medals, Gold_Medals, Silver_Medals, Bronze_Medals,
    Total_Athletes, Events_Count, Host_or_Not, Country_Code, 
    population_total, population_growth, GNI_per_capita, GDP, 
    GDP_growth, Region, GDP_per_capita, Population_Percentage, 
    GDP_Percentage, HDI
)
SELECT 
    Year, Country, Total_Medals, Gold_Medals, Silver_Medals, Bronze_Medals,
    Total_Athletes, Events_Count, Host_or_Not, Country_Code, 
    population_total, population_growth, GNI_per_capita, GDP, 
    GDP_growth, Region, GDP_per_capita, Population_Percentage, 
    GDP_Percentage, HDI
FROM [summary$];



INSERT INTO summary_92_24(
    Year, Country, Total_Medals, Gold_Medals, Silver_Medals, Bronze_Medals,
    Total_Athletes, Events_Count, Host_or_Not, Country_Code, 
    population_total, population_growth, GNI_per_capita, GDP, 
    GDP_growth, Region, GDP_per_capita, Population_Percentage, 
    GDP_Percentage, HDI
)
SELECT 
    Year, Country, Total_Medals, Gold_Medals, Silver_Medals, Bronze_Medals,
    Total_Athletes, Events_Count, Host_or_Not, Country_Code, 
    population_total, population_growth, GNI_per_capita, GDP, 
    GDP_growth, Region, GDP_per_capita, Population_Percentage, 
    GDP_Percentage, HDI
FROM total_medals_2024_new;


-----------
select *
from summary_92_24


select distinct Region
from summary_92_24
