                 


-------------------------2020 Tokyo --------------------------------------------------------------------------
---- total medals ------------------------
USE [olympics1]
GO

SELECT [Year]
      ,[Country]
      ,[Total_Medals]
      ,[Gold_Medals]
      ,[Silver_Medals]
      ,[Bronze_Medals]
into tokyo_medals
FROM [dbo].['Tokyo Medals 2021$']

GO

select *
from tokyo_medals

-----------------get  total athletes ------------------------------------------------


SELECT [Name]
      ,[NOC]
      ,[Discipline]
  FROM [dbo].[Details$]

GO

select *
into total_athletes_2020
from [dbo].[Details$]


select *
from total_athletes_2020


select count(distinct Name) as Total_Athletes , NOC
into total_athletes_tokyo
from total_athletes_2020
group by NOC

select *
from total_athletes_tokyo

alter table total_athletes_tokyo
add Country_Code  varchar(255)

UPDATE total_athletes_tokyo
SET Country_Code = CASE
    WHEN NOC = 'Afghanistan' THEN 'AFG'
    WHEN NOC = 'Albania' THEN 'ALB'
    WHEN NOC = 'Algeria' THEN 'ALG'
    WHEN NOC = 'American Samoa' THEN 'ASA'
    WHEN NOC = 'Andorra' THEN 'AND'
    WHEN NOC = 'Angola' THEN 'ANG'
    WHEN NOC = 'Antigua and Barbuda' THEN 'ANT'
    WHEN NOC = 'Argentina' THEN 'ARG'
    WHEN NOC = 'Armenia' THEN 'ARM'
    WHEN NOC = 'Aruba' THEN 'ARU'
    WHEN NOC = 'Australia' THEN 'AUS'
    WHEN NOC = 'Austria' THEN 'AUT'
    WHEN NOC = 'Azerbaijan' THEN 'AZE'
    WHEN NOC = 'Bahamas' THEN 'BAH'
    WHEN NOC = 'Bahrain' THEN 'BRN'
    WHEN NOC = 'Bangladesh' THEN 'BAN'
    WHEN NOC = 'Barbados' THEN 'BAR'
    WHEN NOC = 'Belarus' THEN 'BLR'
    WHEN NOC = 'Belgium' THEN 'BEL'
    WHEN NOC = 'Belize' THEN 'BIZ'
    WHEN NOC = 'Benin' THEN 'BEN'
    WHEN NOC = 'Bermuda' THEN 'BER'
    WHEN NOC = 'Bhutan' THEN 'BHU'
    WHEN NOC = 'Bolivia' THEN 'BOL'
    WHEN NOC = 'Bosnia and Herzegovina' THEN 'BIH'
    WHEN NOC = 'Botswana' THEN 'BOT'
    WHEN NOC = 'Brazil' THEN 'BRA'
    WHEN NOC = 'Brunei Darussalam' THEN 'BRU'
    WHEN NOC = 'Bulgaria' THEN 'BUL'
    WHEN NOC = 'Burkina Faso' THEN 'BUR'
    WHEN NOC = 'Burundi' THEN 'BDI'
    WHEN NOC = 'Cambodia' THEN 'CAM'
    WHEN NOC = 'Cameroon' THEN 'CMR'
    WHEN NOC = 'Canada' THEN 'CAN'
    WHEN NOC = 'Cape Verde' THEN 'CPV'
    WHEN NOC = 'Cayman Islands' THEN 'CAY'
    WHEN NOC = 'Central African Republic' THEN 'CAF'
    WHEN NOC = 'Chad' THEN 'CHA'
    WHEN NOC = 'Chile' THEN 'CHI'
    WHEN NOC = 'Chinese Taipei' THEN 'TPE'
    WHEN NOC = 'Colombia' THEN 'COL'
    WHEN NOC = 'Comoros' THEN 'COM'
    WHEN NOC = 'Congo' THEN 'CGO'
    WHEN NOC = 'Cook Islands' THEN 'COK'
    WHEN NOC = 'Costa Rica' THEN 'CRC'
    WHEN NOC = 'Côte d\''Ivoire' THEN 'CIV'
    WHEN NOC = 'Croatia' THEN 'CRO'
    WHEN NOC = 'Cuba' THEN 'CUB'
    WHEN NOC = 'Cyprus' THEN 'CYP'
    WHEN NOC = 'Czech Republic' THEN 'CZE'
    WHEN NOC = '[Democratic Republic of the Congo]' THEN 'COD'
    WHEN NOC = '[Democratic Republic of Timor-Leste]' THEN 'TLS'
    WHEN NOC = 'Denmark' THEN 'DEN'
    WHEN NOC = 'Djibouti' THEN 'DJI'
    WHEN NOC = 'Dominica' THEN 'DMA'
    WHEN NOC = 'Dominican Republic' THEN 'DOM'
    WHEN NOC = 'Ecuador' THEN 'ECU'
    WHEN NOC = 'Egypt' THEN 'EGY'
    WHEN NOC = 'El Salvador' THEN 'ESA'
    WHEN NOC = 'Equatorial Guinea' THEN 'GEQ'
    WHEN NOC = 'Eritrea' THEN 'ERI'
    WHEN NOC = 'Estonia' THEN 'EST'
    WHEN NOC = 'Eswatini' THEN 'SWZ'
    WHEN NOC = 'Ethiopia' THEN 'ETH'
   
    WHEN NOC = 'Fiji' THEN 'FIJ'
    WHEN NOC = 'Finland' THEN 'FIN'
    WHEN NOC = 'France' THEN 'FRA'
    WHEN NOC = 'Gabon' THEN 'GAB'
    WHEN NOC = 'Gambia' THEN 'GAM'
    WHEN NOC = 'Georgia' THEN 'GEO'
    WHEN NOC = 'Germany' THEN 'GER'
    WHEN NOC = 'Ghana' THEN 'GHA'
    WHEN NOC = 'Great Britain' THEN 'GBR'
    WHEN NOC = 'Greece' THEN 'GRE'
    WHEN NOC = 'Grenada' THEN 'GRN'
    WHEN NOC = 'Guam' THEN 'GUM'
    WHEN NOC = 'Guatemala' THEN 'GUA'
    WHEN NOC = 'Guinea' THEN 'GUI'
    WHEN NOC = 'Guinea-Bissau' THEN 'GBS'
    WHEN NOC = 'Guyana' THEN 'GUY'
    WHEN NOC = 'Haiti' THEN 'HAI'
    WHEN NOC = 'Honduras' THEN 'HON'
    WHEN NOC = 'Hong Kong, China' THEN 'HKG'
    WHEN NOC = 'Hungary' THEN 'HUN'
    WHEN NOC = 'Iceland' THEN 'ISL'
    WHEN NOC = 'India' THEN 'IND'
    WHEN NOC = 'Indonesia' THEN 'INA'
    WHEN NOC = 'Iraq' THEN 'IRQ'
    WHEN NOC = 'Ireland' THEN 'IRL'
   
    WHEN NOC = 'Israel' THEN 'ISR'
    WHEN NOC = 'Italy' THEN 'ITA'
    WHEN NOC = 'Jamaica' THEN 'JAM'
    WHEN NOC = 'Japan' THEN 'JPN'
    WHEN NOC = 'Jordan' THEN 'JOR'
    WHEN NOC = 'Kazakhstan' THEN 'KAZ'
    WHEN NOC = 'Kenya' THEN 'KEN'
    WHEN NOC = 'Kiribati' THEN 'KIR'
    WHEN NOC = 'Kosovo' THEN 'KOS'
    WHEN NOC = 'Kuwait' THEN 'KUW'
    WHEN NOC = 'Kyrgyzstan' THEN 'KGZ'
    WHEN NOC = 'Lao People\''s Democratic Republic' THEN 'LAO'
    WHEN NOC = 'Latvia' THEN 'LAT'
    WHEN NOC = 'Lebanon' THEN 'LIB'
    WHEN NOC = 'Lesotho' THEN 'LES'
    WHEN NOC = 'Liberia' THEN 'LBR'
    WHEN NOC = 'Libya' THEN 'LBA'
    WHEN NOC = 'Liechtenstein' THEN 'LIE'
    WHEN NOC = 'Lithuania' THEN 'LTU'
    WHEN NOC = 'Luxembourg' THEN 'LUX'
    WHEN NOC = 'Madagascar' THEN 'MAD'
    WHEN NOC = 'Malawi' THEN 'MAW'
    WHEN NOC = 'Malaysia' THEN 'MAS'
    WHEN NOC = 'Maldives' THEN 'MDV'
    WHEN NOC = 'Mali' THEN 'MLI'
    WHEN NOC = 'Malta' THEN 'MLT'
    WHEN NOC = 'Marshall Islands' THEN 'MHL'
    WHEN NOC = 'Mauritania' THEN 'MTN'
    WHEN NOC = 'Mauritius' THEN 'MRI'
    WHEN NOC = 'Mexico' THEN 'MEX'
    WHEN NOC = 'Monaco' THEN 'MON'
    WHEN NOC = 'Mongolia' THEN 'MGL'
    WHEN NOC = 'Montenegro' THEN 'MNE'
    WHEN NOC = 'Morocco' THEN 'MAR'
    WHEN NOC = 'Mozambique' THEN 'MOZ'
    WHEN NOC = 'Myanmar' THEN 'MYA'
    WHEN NOC = 'Namibia' THEN 'NAM'
    WHEN NOC = 'Nauru' THEN 'NRU'
    WHEN NOC = 'Nepal' THEN 'NEP'
    WHEN NOC = 'Netherlands' THEN 'NED'
    WHEN NOC = 'New Zealand' THEN 'NZL'
    WHEN NOC = 'Nicaragua' THEN 'NCA'
    WHEN NOC = 'Niger' THEN 'NIG'
    WHEN NOC = 'Nigeria' THEN 'NGR'
    WHEN NOC = 'North Macedonia' THEN 'MKD'
    WHEN NOC = 'Norway' THEN 'NOR'
    WHEN NOC = 'Oman' THEN 'OMA'
    WHEN NOC = 'Pakistan' THEN 'PAK'
    WHEN NOC = 'Palau' THEN 'PLW'
    WHEN NOC = 'Palestine' THEN 'PLE'
    WHEN NOC = 'Panama' THEN 'PAN'
    WHEN NOC = 'Papua New Guinea' THEN 'PNG'
    WHEN NOC = 'Paraguay' THEN 'PAR'
    
    WHEN NOC = 'Peru' THEN 'PER'
    WHEN NOC = 'Philippines' THEN 'PHI'
    WHEN NOC = 'Poland' THEN 'POL'
    WHEN NOC = 'Portugal' THEN 'POR'
    WHEN NOC = 'Puerto Rico' THEN 'PUR'
    WHEN NOC = 'Qatar' THEN 'QAT'

    WHEN NOC = 'ROC' THEN 'RUS'
    WHEN NOC = 'Romania' THEN 'ROU'
    WHEN NOC = 'Rwanda' THEN 'RWA'
    WHEN NOC = 'Saint Kitts and Nevis' THEN 'SKN'
    WHEN NOC = 'Saint Lucia' THEN 'LCA'
    WHEN NOC = 'Samoa' THEN 'SAM'
    WHEN NOC = 'San Marino' THEN 'SMR'
    WHEN NOC = 'Sao Tome and Principe' THEN 'STP'
    WHEN NOC = 'Saudi Arabia' THEN 'KSA'
    WHEN NOC = 'Senegal' THEN 'SEN'
    WHEN NOC = 'Serbia' THEN 'SRB'
    WHEN NOC = 'Seychelles' THEN 'SEY'
    WHEN NOC = 'Sierra Leone' THEN 'SLE'
    WHEN NOC = 'Singapore' THEN 'SGP'
    WHEN NOC = 'Slovakia' THEN 'SVK'
    WHEN NOC = 'Slovenia' THEN 'SLO'
    WHEN NOC = 'Solomon Islands' THEN 'SOL'
    WHEN NOC = 'Somalia' THEN 'SOM'
    WHEN NOC = 'South Africa' THEN 'RSA'
    WHEN NOC = 'South Sudan' THEN 'SSD'
    WHEN NOC = 'Spain' THEN 'ESP'
    WHEN NOC = 'Sri Lanka' THEN 'SRI'
    WHEN NOC = 'St Vincent and the Grenadines' THEN 'VIN'
    WHEN NOC = 'Sudan' THEN 'SUD'
    WHEN NOC = 'Suriname' THEN 'SUR'
    WHEN NOC = 'Sweden' THEN 'SWE'
    WHEN NOC = 'Switzerland' THEN 'SUI'
    WHEN NOC = 'Syrian Arab Republic' THEN 'SYR'
    WHEN NOC = 'Tajikistan' THEN 'TJK'
    WHEN NOC = 'Thailand' THEN 'THA'
    WHEN NOC = 'Togo' THEN 'TOG'
    WHEN NOC = 'Tonga' THEN 'TGA'
    WHEN NOC = 'Trinidad and Tobago' THEN 'TTO'
    WHEN NOC = 'Tunisia' THEN 'TUN'
    WHEN NOC = 'Turkey' THEN 'TUR'
    WHEN NOC = 'Turkmenistan' THEN 'TKM'
    WHEN NOC = 'Tuvalu' THEN 'TUV'
    WHEN NOC = 'Uganda' THEN 'UGA'
    WHEN NOC = 'Ukraine' THEN 'UKR'
    WHEN NOC = 'United Arab Emirates' THEN 'UAE'

    WHEN NOC = 'Uruguay' THEN 'URU'
    WHEN NOC = 'Uzbekistan' THEN 'UZB'
    WHEN NOC = 'Vanuatu' THEN 'VAN'
    WHEN NOC = 'Venezuela' THEN 'VEN'
    WHEN NOC = 'Vietnam' THEN 'VIE'
    WHEN NOC = 'Virgin Islands, British' THEN 'IVB'
    WHEN NOC = 'Virgin Islands, US' THEN 'ISV'
    WHEN NOC = 'Yemen' THEN 'YEM'
    WHEN NOC = 'Zambia' THEN 'ZAM'
    WHEN NOC = 'Zimbabwe' THEN 'ZIM'
    ELSE Country_Code
END;


------------
UPDATE total_athletes_tokyo
SET Country_Code = CASE
    WHEN NOC LIKE '%People''s Republic of China%' THEN 'CHN'
    WHEN NOC LIKE '%Republic of Korea%' THEN 'KOR'
    WHEN NOC LIKE '%Republic of Moldova%' THEN 'MDA'
    WHEN NOC LIKE '%Federated States of Micronesia%' THEN 'FSM'
    WHEN NOC LIKE '%United Republic of Tanzania%' THEN 'TAN'
    WHEN NOC LIKE '%United States of America%' THEN 'USA'
    WHEN NOC LIKE '%Islamic Republic of Iran%' THEN 'IRI'
    ELSE Country_Code
END;



select *
from total_athletes_tokyo

select *
from tokyo_medals

------------------------------------------------------------ add Total Athletes --------------------------------------------------------------------------

select *
into tokyo_medals_2
from tokyo_medals

select *
from tokyo_medals_2

alter table tokyo_medals_2
add Total_Athletes varchar(255)



UPDATE t2
SET Total_Athletes = ta.Total_Athletes
FROM tokyo_medals_2 t2
JOIN total_athletes_tokyo ta
ON  t2.Country = ta.NOC





select *
from total_athletes_tokyo
where NOC  like '%CÃ´te d''Ivoire%'

--------update Côte d'Ivoire
UPDATE tokyo_medals_2
SET Total_Athletes = 29
where Total_Athletes is null 


-------------------------------------------------------------------------add Total events -----------------------------------------------------------------

select *
from tokyo_medals_2

SELECT *
into tokyo_events
FROM [dbo].[tokyo_2020_results$]


select *
from tokyo_events

alter table tokyo_events
add events_list varchar(255)

-- Updating the new column with concatenated values
update tokyo_events
set events_list = concat(discipline_title,' ', event_title)


--- now events_list group by Country_name 
select country_name , count(distinct events_list) as Events_Count
into tokyo_events_2
from tokyo_events
group by country_name



select *
from tokyo_events_2



--update it to tokyo_medals_2

select *
from tokyo_medals_2

alter table tokyo_medals_2
add Events_Count varchar(255)

UPDATE t2
SET Events_Count = ta.Events_Count
FROM tokyo_medals_2 t2
JOIN tokyo_events_2 ta
ON  t2.Country = ta.country_name

-------------------------------------------------------------add host or not -------------------------------------------------------------

select *
from tokyo_medals_2

alter table tokyo_medals_2
add Host_or_Not float

update tokyo_medals_2
set Host_or_Not = 1
where Country = 'Japan'

update tokyo_medals_2
set Host_or_Not = 0
where Host_or_Not is null


----------------------------------------------------------------------add Country Code -------------------------------------------------------------------------

select *
into tokyo_medals_3
from tokyo_medals_2

alter table tokyo_medals_3
add Country_Code varchar(255)

select *
from tokyo_medals_3


-- Updating Country_Code based on Country name
UPDATE tokyo_medals_3
SET Country_Code = CASE
    WHEN Country = 'United States of America' THEN 'USA'
    WHEN Country like '%People\''s Republic of China%' THEN 'CHN'
    WHEN Country = 'Japan' THEN 'JPN'
    WHEN Country = 'Great Britain' THEN 'GBR'
    WHEN Country = 'ROC' THEN 'ROC'
    WHEN Country = 'Australia' THEN 'AUS'
    WHEN Country = 'Netherlands' THEN 'NED'
    WHEN Country = 'France' THEN 'FRA'
    WHEN Country = 'Germany' THEN 'GER'
    WHEN Country = 'Italy' THEN 'ITA'
    WHEN Country = 'Canada' THEN 'CAN'
    WHEN Country = 'Brazil' THEN 'BRA'
    WHEN Country = 'New Zealand' THEN 'NZL'
    WHEN Country = 'Cuba' THEN 'CUB'
    WHEN Country = 'Hungary' THEN 'HUN'
    WHEN Country = 'Republic of Korea' THEN 'KOR'
    WHEN Country = 'Poland' THEN 'POL'
    WHEN Country = 'Czech Republic' THEN 'CZE'
    WHEN Country = 'Kenya' THEN 'KEN'
    WHEN Country = 'Norway' THEN 'NOR'
    WHEN Country = 'Jamaica' THEN 'JAM'
    WHEN Country = 'Spain' THEN 'ESP'
    WHEN Country = 'Sweden' THEN 'SWE'
    WHEN Country = 'Switzerland' THEN 'SUI'
    WHEN Country = 'Denmark' THEN 'DEN'
    WHEN Country = 'Croatia' THEN 'CRO'
    WHEN Country = 'Islamic Republic of Iran' THEN 'IRI'
    WHEN Country = 'Serbia' THEN 'SRB'
    WHEN Country = 'Belgium' THEN 'BEL'
    WHEN Country = 'Bulgaria' THEN 'BUL'
    WHEN Country = 'Slovenia' THEN 'SLO'
    WHEN Country = 'Uzbekistan' THEN 'UZB'
    WHEN Country = 'Georgia' THEN 'GEO'
    WHEN Country = 'Chinese Taipei' THEN 'TPE'
    WHEN Country = 'Turkey' THEN 'TUR'
    WHEN Country = 'Greece' THEN 'GRE'
    WHEN Country = 'Uganda' THEN 'UGA'
    WHEN Country = 'Ecuador' THEN 'ECU'
    WHEN Country = 'Ireland' THEN 'IRL'
    WHEN Country = 'Israel' THEN 'ISR'
    WHEN Country = 'Qatar' THEN 'QAT'
    WHEN Country = 'Bahamas' THEN 'BAH'
    WHEN Country = 'Kosovo' THEN 'KOS'
    WHEN Country = 'Ukraine' THEN 'UKR'
    WHEN Country = 'Belarus' THEN 'BLR'
    WHEN Country = 'Romania' THEN 'ROU'
    WHEN Country = 'Venezuela' THEN 'VEN'
    WHEN Country = 'India' THEN 'IND'
    WHEN Country = 'Hong Kong, China' THEN 'HKG'
    WHEN Country = 'Philippines' THEN 'PHI'
    WHEN Country = 'Slovakia' THEN 'SVK'
    WHEN Country = 'South Africa' THEN 'RSA'
    WHEN Country = 'Austria' THEN 'AUT'
    WHEN Country = 'Egypt' THEN 'EGY'
    WHEN Country = 'Indonesia' THEN 'INA'
    WHEN Country = 'Ethiopia' THEN 'ETH'
    WHEN Country = 'Portugal' THEN 'POR'
    WHEN Country = 'Tunisia' THEN 'TUN'
    WHEN Country = 'Estonia' THEN 'EST'
    WHEN Country = 'Fiji' THEN 'FIJ'
    WHEN Country = 'Latvia' THEN 'LVA'
    WHEN Country = 'Thailand' THEN 'THA'
    WHEN Country = 'Bermuda' THEN 'BER'
    WHEN Country = 'Morocco' THEN 'MAR'
    WHEN Country = 'Puerto Rico' THEN 'PUR'
    WHEN Country = 'Colombia' THEN 'COL'
    WHEN Country = 'Azerbaijan' THEN 'AZE'
    WHEN Country = 'Dominican Republic' THEN 'DOM'
    WHEN Country = 'Armenia' THEN 'ARM'
    WHEN Country = 'Kyrgyzstan' THEN 'KGZ'
    WHEN Country = 'Mongolia' THEN 'MGL'
    WHEN Country = 'Argentina' THEN 'ARG'
    WHEN Country = 'San Marino' THEN 'SMR'
    WHEN Country = 'Jordan' THEN 'JOR'
    WHEN Country = 'Malaysia' THEN 'MAS'
    WHEN Country = 'Nigeria' THEN 'NGA'
    WHEN Country = 'Bahrain' THEN 'BRN'
    WHEN Country = 'Saudi Arabia' THEN 'KSA'
    WHEN Country = 'Lithuania' THEN 'LTU'
    WHEN Country = 'North Macedonia' THEN 'MKD'
    WHEN Country = 'Namibia' THEN 'NAM'
    WHEN Country = 'Turkmenistan' THEN 'TKM'
    WHEN Country = 'Kazakhstan' THEN 'KAZ'
    WHEN Country = 'Mexico' THEN 'MEX'
    WHEN Country = 'Finland' THEN 'FIN'
    WHEN Country = 'Botswana' THEN 'BOT'
    WHEN Country = 'Burkina Faso' THEN 'BFA'
    WHEN Country like '%Côte d\''Ivoire%' THEN 'CIV'
    WHEN Country = 'Ghana' THEN 'GHA'
    WHEN Country = 'Grenada' THEN 'GRD'
    WHEN Country = 'Kuwait' THEN 'KWT'
    WHEN Country = 'Republic of Moldova' THEN 'MDA'
    WHEN Country = 'Syrian Arab Republic' THEN 'SYR'
    ELSE Country_Code
END;



UPDATE tokyo_medals_3
SET Country_Code = 'CHN'
where Country like '%People''s Republic of China%'



UPDATE tokyo_medals_3
SET Country_Code = 'CIV'
where Country like '%CÃ´te d''Ivoire%'


----------------------------------------------------------------------add Population Total ------------------------------------------------------

select *
into tokyo_medals_4
from tokyo_medals_3


select *
from tokyo_medals_4

alter table tokyo_medals_4
add population_total float

select *
from population_total_1



UPDATE tokyo_medals_4
SET population_total = pt.Year_2020
FROM tokyo_medals_4 s
JOIN population_total_1 pt
ON s.Country = pt.C_name
WHERE s.Year = 2020 AND pt.Year_2020 IS NOT NULL



UPDATE tokyo_medals_4
SET population_total = pt.Year_2020
FROM tokyo_medals_4 s
JOIN population_total_1 pt
ON s.Country_Code = pt.C_Code
WHERE s.Year = 2020 AND pt.Year_2020 IS NOT NULL


--Rename ROC to Russian Federation 

Update tokyo_medals_4
set Country ='Russian Federation'
where Country ='ROC'


Update tokyo_medals_4
set Country_Code ='IRN'
where Country ='Islamic Republic of Iran'


Update tokyo_medals_4
set Country_Code ='BHS'
where Country ='Bahamas'

select *
from tokyo_medals_4
where population_total is null



--------------------------------------------------add population Growth ----------------------------------------
select *
from tokyo_medals_4

alter table tokyo_medals_4
add population_growth float

select *
from population_growth_annual



UPDATE tokyo_medals_4
SET population_growth = pga.[2020 (YR2020)]
FROM tokyo_medals_4 s
JOIN population_growth_annual pga
ON s.Country = pga.[Country Name]
WHERE s.Year = 2020 AND pga.[2020 (YR2020)] IS NOT NULL



UPDATE tokyo_medals_4
SET population_growth = pga.[2020 (YR2020)]
FROM tokyo_medals_4 s
JOIN population_growth_annual pga
ON s.Country_Code = pga.[Country Code]
WHERE s.Year = 2020 AND pga.[2020 (YR2020)] IS NOT NULL


----------------------------------------------------------------add GNI per Capita -------------------------------------------------------------------------------------
select *
from tokyo_medals_4

alter table tokyo_medals_4
add GNI_per_capita float

select *
from GNI_per_capita



UPDATE tokyo_medals_4
SET GNI_per_capita = gni.[2020 (YR2020)]
FROM tokyo_medals_4 s
JOIN GNI_per_capita gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2020 AND gni.[2020 (YR2020)] IS NOT NULL



UPDATE tokyo_medals_4
SET GNI_per_capita = gni.[2020 (YR2020)]
FROM tokyo_medals_4 s
JOIN GNI_per_capita gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 2020 AND gni.[2020 (YR2020)] IS NOT NULL

select *
from tokyo_medals_4
where GNI_per_capita is null


-----------------------------------------------------------------------add GDP ------------------------------------------------------------------------------------------------------

select *
from tokyo_medals_4

alter table tokyo_medals_4
add GDP float

select *
from GDP



UPDATE tokyo_medals_4
SET GDP = gni.[2020 (YR2020)]
FROM tokyo_medals_4 s
JOIN GDP gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2020 AND gni.[2020 (YR2020)] IS NOT NULL



UPDATE tokyo_medals_4
SET GDP = gni.[2020 (YR2020)]
FROM tokyo_medals_4 s
JOIN GDP gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 2020 AND gni.[2020 (YR2020)] IS NOT NULL


-----------------------------------------------------------------------GDP Growth ----------------------------------------------------------------------------

select *
from tokyo_medals_4

alter table tokyo_medals_4
add GDP_growth float

select *
from GDP_growth



UPDATE tokyo_medals_4
SET GDP_growth = gni.[2020 (YR2020)]
FROM tokyo_medals_4 s
JOIN GDP_growth gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2020 AND gni.[2020 (YR2020)] IS NOT NULL



UPDATE tokyo_medals_4
SET GDP_growth = gni.[2020 (YR2020)]
FROM tokyo_medals_4 s
JOIN GDP_growth gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 2020 AND gni.[2020 (YR2020)] IS NOT NULL



-----------------------------------------------------------------------add Region -----------------------------------------------------------------------------------------

select *
from tokyo_medals_4

alter table tokyo_medals_4
add Region varchar(255)

select *
from ['world-regions-according-to-the-$']



UPDATE tokyo_medals_4
SET Region = gni.[World Region according to the World Bank]
FROM tokyo_medals_4 s
JOIN ['world-regions-according-to-the-$'] gni
ON s.Country = gni.Entity




UPDATE tokyo_medals_4
SET Region = gni.[World Region according to the World Bank]
FROM tokyo_medals_4 s
JOIN ['world-regions-according-to-the-$'] gni
ON s.Country_Code = gni.Code


update tokyo_medals_4
set Region = 'Europe and Central Asia'
where Country_Code = 'ROC'


---------------------------------------------------add GDP per Capita------------------------------------------------------------------------------------------
select *
from tokyo_medals_4

alter table tokyo_medals_4
add GDP_per_capita float

select *
from gdp_per_capita$



UPDATE tokyo_medals_4
SET GDP_per_capita = gni.[2020]
FROM tokyo_medals_4 s
JOIN gdp_per_capita$ gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2020 AND gni.[2020] IS NOT NULL



UPDATE tokyo_medals_4
SET GDP_per_capita = gni.[2020]
FROM tokyo_medals_4 s
JOIN gdp_per_capita$ gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 2020 AND gni.[2020] IS NOT NULL



---------------------------------------------------------------add Population Percentage-----------------------------------------------------------------------------------------------------------


select *
from tokyo_medals_4

alter table tokyo_medals_4
add Population_Percentage float

select *
from ['population %$']



UPDATE tokyo_medals_4
SET Population_Percentage = gni.[2020]
FROM tokyo_medals_4 s
JOIN ['population %$'] gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2020 AND gni.[2020] IS NOT NULL



UPDATE tokyo_medals_4
SET Population_Percentage = gni.[2020]
FROM tokyo_medals_4 s
JOIN ['population %$'] gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 2020 AND gni.[2020] IS NOT NULL


----------------------------------------------------------------add GDP percentage----------------------------------------------------------------------------------------------------------

select *
from tokyo_medals_4

alter table tokyo_medals_4
add GDP_Percentage float

select *
from ['GDP %$']



UPDATE tokyo_medals_4
SET GDP_Percentage = gni.[2020]
FROM tokyo_medals_4 s
JOIN ['GDP %$'] gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2020 AND gni.[2020] IS NOT NULL



UPDATE tokyo_medals_4
SET GDP_Percentage = gni.[2020]
FROM tokyo_medals_4 s
JOIN ['GDP %$'] gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 2020 AND gni.[2020] IS NOT NULL




----------------------------------------------------------------------add HDI - ['human-development-index$'] ------------------------------------------------------------------------
select *
into tokyo_medals_5
from tokyo_medals_4

select *
from tokyo_medals_5

alter table tokyo_medals_5
add HDI float

select *
from HDI_2020$



UPDATE tokyo_medals_5
SET HDI = hdi.HDI
FROM tokyo_medals_5 s
JOIN HDI_2020$ hdi
ON s.Country = hdi.Country



select *
from tokyo_medals_5
where HDI is null

UPDATE tokyo_medals_5 SET HDI = 0.932 where Country = 'Great Britain'
UPDATE tokyo_medals_5 SET HDI = 0.781 where Country like '%People''s Republic of China%'
UPDATE tokyo_medals_5 SET HDI = 0.923 where Country = 'United States of America'
UPDATE tokyo_medals_5 SET HDI = 0.530  where Country like '%CÃ´te d''Ivoire%'
UPDATE tokyo_medals_5 SET HDI = 0.740 where Country = 'Jordan'
UPDATE tokyo_medals_5 SET HDI = 0.955 where Country = 'Hong Kong, China'
UPDATE tokyo_medals_5 SET HDI = 0.891 where Country = 'Czech Republic'
UPDATE tokyo_medals_5 SET HDI = 0.779 where Country = 'Islamic Republic of Iran'
UPDATE tokyo_medals_5 SET HDI = 0.922 where Country = 'Republic of Korea'

UPDATE tokyo_medals_5 SET HDI = 0.691 where Country = 'Venezuela'
UPDATE tokyo_medals_5 SET HDI = 0.844 where Country = 'San Marino'
UPDATE tokyo_medals_5 SET HDI = 0.731 where Country = 'Turkmenistan'
UPDATE tokyo_medals_5 SET HDI = 0.769 where Country = 'Republic of Moldova'

UPDATE tokyo_medals_5 SET HDI = 0.561 where Country = 'Syrian Arab Republic'
UPDATE tokyo_medals_5 SET HDI = 0.740 where Country = 'Jordan'
UPDATE tokyo_medals_5 SET HDI = 0.740 where Country = 'Jordan'



---------------------------------------------------------------------------------------------------
--final 

select *
from tokyo_medals_5



----------------------------------------------
-- combine 


select *
into tokyo_summary
from tokyo_medals_5


select *
from tokyo_summary

select *
from s5























