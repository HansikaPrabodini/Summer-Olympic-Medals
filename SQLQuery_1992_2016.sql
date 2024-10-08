USE [olympics1]
GO

SELECT [ID]
      ,[Name]
      ,[Sex]
      ,[Age]
      ,[Height]
      ,[Weight]
      ,[Team]
      ,[NOC]
      ,[Games]
      ,[Year]
      ,[Season]
      ,[City]
      ,[Sport]
      ,[Event]
      ,[Medal]
  FROM [dbo].[athlete_events$]

GO



select *
from otz_01

--as a first step remove all winter olympic results from data set 
-- create copy of table 
select *
into ol1
from otz_01
where Season ='Summer'


--then get 1992 to 2016 summer olympic results only 

select *
into ol2
from ol1
where Year in ( 1992, 1996,2000,2004,2008,2012,2016)


--now only have 1992 to 2016 summer olympic results 
select *
from ol2

--add country column and get country correct way 
select *
into ol3
from ol2

alter table ol3
add Country varchar(255)


select *
from ol3

-- update country column 
UPDATE ol3 SET Country = 'Afghanistan' WHERE NOC = 'AFG';
UPDATE ol3 SET Country = 'Albania' WHERE NOC = 'ALB';
UPDATE ol3 SET Country = 'Algeria' WHERE NOC = 'ALG';
UPDATE ol3 SET Country = 'Andorra' WHERE NOC = 'AND';
UPDATE ol3 SET Country = 'Angola' WHERE NOC = 'ANG';
UPDATE ol3 SET Country = 'Argentina' WHERE NOC = 'ARG';
UPDATE ol3 SET Country = 'Armenia' WHERE NOC = 'ARM';
UPDATE ol3 SET Country = 'Australia' WHERE NOC = 'AUS';
UPDATE ol3 SET Country = 'Austria' WHERE NOC = 'AUT';
UPDATE ol3 SET Country = 'Azerbaijan' WHERE NOC = 'AZE';
UPDATE ol3 SET Country = 'Bahamas' WHERE NOC = 'BAH';
UPDATE ol3 SET Country = 'Bahrain' WHERE NOC = 'BRN';
UPDATE ol3 SET Country = 'Bangladesh' WHERE NOC = 'BAN';
UPDATE ol3 SET Country = 'Barbados' WHERE NOC = 'BAR';
UPDATE ol3 SET Country = 'Belarus' WHERE NOC = 'BLR';
UPDATE ol3 SET Country = 'Belgium' WHERE NOC = 'BEL';
UPDATE ol3 SET Country = 'Belize' WHERE NOC = 'BIZ';
UPDATE ol3 SET Country = 'Benin' WHERE NOC = 'BEN';
UPDATE ol3 SET Country = 'Bhutan' WHERE NOC = 'BHU';
UPDATE ol3 SET Country = 'Bolivia' WHERE NOC = 'BOL';
UPDATE ol3 SET Country = 'Bosnia and Herzegovina' WHERE NOC = 'BIH';
UPDATE ol3 SET Country = 'Botswana' WHERE NOC = 'BOT';
UPDATE ol3 SET Country = 'Brazil' WHERE NOC = 'BRA';
UPDATE ol3 SET Country = 'Brunei' WHERE NOC = 'BRU';
UPDATE ol3 SET Country = 'Bulgaria' WHERE NOC = 'BUL';
UPDATE ol3 SET Country = 'Burkina Faso' WHERE NOC = 'BUR';
UPDATE ol3 SET Country = 'Burundi' WHERE NOC = 'BDI';
UPDATE ol3 SET Country = 'Cambodia' WHERE NOC = 'CAM';
UPDATE ol3 SET Country = 'Cameroon' WHERE NOC = 'CMR';
UPDATE ol3 SET Country = 'Canada' WHERE NOC = 'CAN';
UPDATE ol3 SET Country = 'Cape Verde' WHERE NOC = 'CPV';
UPDATE ol3 SET Country = 'Central African Republic' WHERE NOC = 'CAF';
UPDATE ol3 SET Country = 'Chad' WHERE NOC = 'CHA';
UPDATE ol3 SET Country = 'Chile' WHERE NOC = 'CHI';
UPDATE ol3 SET Country = 'China' WHERE NOC = 'CHN';
UPDATE ol3 SET Country = 'Colombia' WHERE NOC = 'COL';
UPDATE ol3 SET Country = 'Comoros' WHERE NOC = 'COM';
UPDATE ol3 SET Country = 'Democratic Republic of the Congo' WHERE NOC = 'COD';
UPDATE ol3 SET Country = 'Republic of the Congo' WHERE NOC = 'COG';
UPDATE ol3 SET Country = 'Costa Rica' WHERE NOC = 'CRC';
UPDATE ol3 SET Country = 'Côte d''Ivoire' WHERE NOC = 'CIV';
UPDATE ol3 SET Country = 'Croatia' WHERE NOC = 'CRO';
UPDATE ol3 SET Country = 'Cuba' WHERE NOC = 'CUB';
UPDATE ol3 SET Country = 'Cyprus' WHERE NOC = 'CYP';
UPDATE ol3 SET Country = 'Czech Republic' WHERE NOC = 'CZE';
UPDATE ol3 SET Country = 'Denmark' WHERE NOC = 'DEN';
UPDATE ol3 SET Country = 'Djibouti' WHERE NOC = 'DJI';
UPDATE ol3 SET Country = 'Dominican Republic' WHERE NOC = 'DOM';
UPDATE ol3 SET Country = 'Ecuador' WHERE NOC = 'ECU';
UPDATE ol3 SET Country = 'Egypt' WHERE NOC = 'EGY';
UPDATE ol3 SET Country = 'El Salvador' WHERE NOC = 'ESA';
UPDATE ol3 SET Country = 'Equatorial Guinea' WHERE NOC = 'GEQ';
UPDATE ol3 SET Country = 'Eritrea' WHERE NOC = 'ERI';
UPDATE ol3 SET Country = 'Estonia' WHERE NOC = 'EST';
UPDATE ol3 SET Country = 'Ethiopia' WHERE NOC = 'ETH';
UPDATE ol3 SET Country = 'Fiji' WHERE NOC = 'FIJ';
UPDATE ol3 SET Country = 'Finland' WHERE NOC = 'FIN';
UPDATE ol3 SET Country = 'France' WHERE NOC = 'FRA';
UPDATE ol3 SET Country = 'Gabon' WHERE NOC = 'GAB';
UPDATE ol3 SET Country = 'Gambia' WHERE NOC = 'GAM';
UPDATE ol3 SET Country = 'Georgia' WHERE NOC = 'GEO';
UPDATE ol3 SET Country = 'Germany' WHERE NOC = 'GER';
UPDATE ol3 SET Country = 'Ghana' WHERE NOC = 'GHA';
UPDATE ol3 SET Country = 'Greece' WHERE NOC = 'GRE';
UPDATE ol3 SET Country = 'Grenada' WHERE NOC = 'GRN';
UPDATE ol3 SET Country = 'Guam' WHERE NOC = 'GUM';
UPDATE ol3 SET Country = 'Guatemala' WHERE NOC = 'GUA';
UPDATE ol3 SET Country = 'Guinea' WHERE NOC = 'GUI';
UPDATE ol3 SET Country = 'Guinea-Bissau' WHERE NOC = 'GNB';
UPDATE ol3 SET Country = 'Guyana' WHERE NOC = 'GUY';
UPDATE ol3 SET Country = 'Haiti' WHERE NOC = 'HAI';
UPDATE ol3 SET Country = 'Honduras' WHERE NOC = 'HON';
UPDATE ol3 SET Country = 'Hong Kong' WHERE NOC = 'HKG';
UPDATE ol3 SET Country = 'Hungary' WHERE NOC = 'HUN';
UPDATE ol3 SET Country = 'Iceland' WHERE NOC = 'ISL';
UPDATE ol3 SET Country = 'India' WHERE NOC = 'IND';
UPDATE ol3 SET Country = 'Indonesia' WHERE NOC = 'INA';
UPDATE ol3 SET Country = 'Iran' WHERE NOC = 'IRI';
UPDATE ol3 SET Country = 'Iraq' WHERE NOC = 'IRQ';
UPDATE ol3 SET Country = 'Ireland' WHERE NOC = 'IRL';
UPDATE ol3 SET Country = 'Israel' WHERE NOC = 'ISR';
UPDATE ol3 SET Country = 'Italy' WHERE NOC = 'ITA';
UPDATE ol3 SET Country = 'Jamaica' WHERE NOC = 'JAM';
UPDATE ol3 SET Country = 'Japan' WHERE NOC = 'JPN';
UPDATE ol3 SET Country = 'Jordan' WHERE NOC = 'JOR';
UPDATE ol3 SET Country = 'Kazakhstan' WHERE NOC = 'KAZ';
UPDATE ol3 SET Country = 'Kenya' WHERE NOC = 'KEN';
UPDATE ol3 SET Country = 'Kiribati' WHERE NOC = 'KIR';
UPDATE ol3 SET Country = 'South Korea' WHERE NOC = 'KOR';
UPDATE ol3 SET Country = 'Kosovo' WHERE NOC = 'KOS';
UPDATE ol3 SET Country = 'Kuwait' WHERE NOC = 'KUW';
UPDATE ol3 SET Country = 'Kyrgyzstan' WHERE NOC = 'KGZ';
UPDATE ol3 SET Country = 'Laos' WHERE NOC = 'LAO';
UPDATE ol3 SET Country = 'Latvia' WHERE NOC = 'LAT';
UPDATE ol3 SET Country = 'Lebanon' WHERE NOC = 'LBN';
UPDATE ol3 SET Country = 'Lesotho' WHERE NOC = 'LES';
UPDATE ol3 SET Country = 'Liberia' WHERE NOC = 'LBR';
UPDATE ol3 SET Country = 'Libya' WHERE NOC = 'LBA';
UPDATE ol3 SET Country = 'Liechtenstein' WHERE NOC = 'LIE';
UPDATE ol3 SET Country = 'Lithuania' WHERE NOC = 'LTU';
UPDATE ol3 SET Country = 'Luxembourg' WHERE NOC = 'LUX';
UPDATE ol3 SET Country = 'Madagascar' WHERE NOC = 'MAD';
UPDATE ol3 SET Country = 'Malawi' WHERE NOC = 'MAW';
UPDATE ol3 SET Country = 'Malaysia' WHERE NOC = 'MAS';
UPDATE ol3 SET Country = 'Maldives' WHERE NOC = 'MDV';
UPDATE ol3 SET Country = 'Mali' WHERE NOC = 'MLI';
UPDATE ol3 SET Country = 'Malta' WHERE NOC = 'MLT';
UPDATE ol3 SET Country = 'Mauritania' WHERE NOC = 'MTN';
UPDATE ol3 SET Country = 'Mauritius' WHERE NOC = 'MRI';
UPDATE ol3 SET Country = 'Mexico' WHERE NOC = 'MEX';
UPDATE ol3 SET Country = 'Moldova' WHERE NOC = 'MDA';
UPDATE ol3 SET Country = 'Monaco' WHERE NOC = 'MON';
UPDATE ol3 SET Country = 'Mongolia' WHERE NOC = 'MGL';
UPDATE ol3 SET Country = 'Montenegro' WHERE NOC = 'MNE';
UPDATE ol3 SET Country = 'Morocco' WHERE NOC = 'MAR';
UPDATE ol3 SET Country = 'Mozambique' WHERE NOC = 'MOZ';
UPDATE ol3 SET Country = 'Myanmar' WHERE NOC = 'MYA';
UPDATE ol3 SET Country = 'Namibia' WHERE NOC = 'NAM';
UPDATE ol3 SET Country = 'Nauru' WHERE NOC = 'NRU';
UPDATE ol3 SET Country = 'Nepal' WHERE NOC = 'NEP';
UPDATE ol3 SET Country = 'Netherlands' WHERE NOC = 'NED';
UPDATE ol3 SET Country = 'New Zealand' WHERE NOC = 'NZL';
UPDATE ol3 SET Country = 'Nicaragua' WHERE NOC = 'NCA';
UPDATE ol3 SET Country = 'Niger' WHERE NOC = 'NIG';
UPDATE ol3 SET Country = 'Nigeria' WHERE NOC = 'NGR';
UPDATE ol3 SET Country = 'North Macedonia' WHERE NOC = 'MKD';
UPDATE ol3 SET Country = 'Norway' WHERE NOC = 'NOR';
UPDATE ol3 SET Country = 'Oman' WHERE NOC = 'OMA';
UPDATE ol3 SET Country = 'Pakistan' WHERE NOC = 'PAK';
UPDATE ol3 SET Country = 'Palau' WHERE NOC = 'PLW';
UPDATE ol3 SET Country = 'Panama' WHERE NOC = 'PAN';
UPDATE ol3 SET Country = 'Papua New Guinea' WHERE NOC = 'PNG';
UPDATE ol3 SET Country = 'Paraguay' WHERE NOC = 'PAR';
UPDATE ol3 SET Country = 'Peru' WHERE NOC = 'PER';
UPDATE ol3 SET Country = 'Philippines' WHERE NOC = 'PHI';
UPDATE ol3 SET Country = 'Poland' WHERE NOC = 'POL';
UPDATE ol3 SET Country = 'Portugal' WHERE NOC = 'POR';
UPDATE ol3 SET Country = 'Puerto Rico' WHERE NOC = 'PUR';
UPDATE ol3 SET Country = 'Qatar' WHERE NOC = 'QAT';
UPDATE ol3 SET Country = 'Romania' WHERE NOC = 'ROU';
UPDATE ol3 SET Country = 'Russian Federation' WHERE NOC = 'RUS';
UPDATE ol3 SET Country = 'Rwanda' WHERE NOC = 'RWA';
UPDATE ol3 SET Country = 'Saint Kitts and Nevis' WHERE NOC = 'SKN';
UPDATE ol3 SET Country = 'Saint Lucia' WHERE NOC = 'LCA';
UPDATE ol3 SET Country = 'Saint Vincent and the Grenadines' WHERE NOC = 'VIN';
UPDATE ol3 SET Country = 'Samoa' WHERE NOC = 'SAM';
UPDATE ol3 SET Country = 'San Marino' WHERE NOC = 'SMR';
UPDATE ol3 SET Country = 'Sao Tome and Principe' WHERE NOC = 'STP';
UPDATE ol3 SET Country = 'Saudi Arabia' WHERE NOC = 'KSA';
UPDATE ol3 SET Country = 'Senegal' WHERE NOC = 'SEN';
UPDATE ol3 SET Country = 'Serbia' WHERE NOC = 'SRB';
UPDATE ol3 SET Country = 'Seychelles' WHERE NOC = 'SEY';
UPDATE ol3 SET Country = 'Sierra Leone' WHERE NOC = 'SLE';
UPDATE ol3 SET Country = 'Singapore' WHERE NOC = 'SGP';
UPDATE ol3 SET Country = 'Slovakia' WHERE NOC = 'SVK';
UPDATE ol3 SET Country = 'Slovenia' WHERE NOC = 'SLO';
UPDATE ol3 SET Country = 'Solomon Islands' WHERE NOC = 'SOL';
UPDATE ol3 SET Country = 'Somalia' WHERE NOC = 'SOM';
UPDATE ol3 SET Country = 'South Africa' WHERE NOC = 'RSA';
UPDATE ol3 SET Country = 'Spain' WHERE NOC = 'ESP';
UPDATE ol3 SET Country = 'Sri Lanka' WHERE NOC = 'SRI';
UPDATE ol3 SET Country = 'Sudan' WHERE NOC = 'SUD';
UPDATE ol3 SET Country = 'Suriname' WHERE NOC = 'SUR';
UPDATE ol3 SET Country = 'Sweden' WHERE NOC = 'SWE';
UPDATE ol3 SET Country = 'Switzerland' WHERE NOC = 'SUI';
UPDATE ol3 SET Country = 'Syria' WHERE NOC = 'SYR';
UPDATE ol3 SET Country = 'Chinese Taipei' WHERE NOC = 'TPE';
UPDATE ol3 SET Country = 'Tajikistan' WHERE NOC = 'TJK';
UPDATE ol3 SET Country = 'Tanzania' WHERE NOC = 'TAN';
UPDATE ol3 SET Country = 'Thailand' WHERE NOC = 'THA';
UPDATE ol3 SET Country = 'Timor-Leste' WHERE NOC = 'TLS';
UPDATE ol3 SET Country = 'Togo' WHERE NOC = 'TOG';
UPDATE ol3 SET Country = 'Tonga' WHERE NOC = 'TGA';
UPDATE ol3 SET Country = 'Trinidad and Tobago' WHERE NOC = 'TTO';
UPDATE ol3 SET Country = 'Tunisia' WHERE NOC = 'TUN';
UPDATE ol3 SET Country = 'Turkey' WHERE NOC = 'TUR';
UPDATE ol3 SET Country = 'Turkmenistan' WHERE NOC = 'TKM';
UPDATE ol3 SET Country = 'Tuvalu' WHERE NOC = 'TUV';
UPDATE ol3 SET Country = 'Uganda' WHERE NOC = 'UGA';
UPDATE ol3 SET Country = 'Ukraine' WHERE NOC = 'UKR';
UPDATE ol3 SET Country = 'United Arab Emirates' WHERE NOC = 'UAE';
UPDATE ol3 SET Country = 'United Kingdom' WHERE NOC = 'GBR';
UPDATE ol3 SET Country = 'United States' WHERE NOC = 'USA';
UPDATE ol3 SET Country = 'Uruguay' WHERE NOC = 'URU';
UPDATE ol3 SET Country = 'Uzbekistan' WHERE NOC = 'UZB';
UPDATE ol3 SET Country = 'Vanuatu' WHERE NOC = 'VAN';
UPDATE ol3 SET Country = 'Venezuela' WHERE NOC = 'VEN';
UPDATE ol3 SET Country = 'Vietnam' WHERE NOC = 'VIE';
UPDATE ol3 SET Country = 'Yemen' WHERE NOC = 'YEM';
UPDATE ol3 SET Country = 'Zambia' WHERE NOC = 'ZAM';
UPDATE ol3 SET Country = 'Zimbabwe' WHERE NOC = 'ZIM';


--check null values 
select distinct NOC 
from ol3
where Country is null

UPDATE ol3 SET Country = 'Netherlands Antilles' WHERE NOC = 'AHO';
UPDATE ol3 SET Country = 'Antigua and Barbuda' WHERE NOC = 'ANT';
UPDATE ol3 SET Country = 'Aruba' WHERE NOC = 'ARU';
UPDATE ol3 SET Country = 'American Samoa' WHERE NOC = 'ASA';
UPDATE ol3 SET Country = 'Bermuda' WHERE NOC = 'BER';
UPDATE ol3 SET Country = 'Cayman Islands' WHERE NOC = 'CAY';
UPDATE ol3 SET Country = 'Republic of the Congo' WHERE NOC = 'CGO';
UPDATE ol3 SET Country = 'Cook Islands' WHERE NOC = 'COK';
UPDATE ol3 SET Country = 'Dominica' WHERE NOC = 'DMA';
UPDATE ol3 SET Country = 'Unified Team' WHERE NOC = 'EUN'; -- Former Soviet Union countries in the 1992 Olympics
UPDATE ol3 SET Country = 'Federated States of Micronesia' WHERE NOC = 'FSM';
UPDATE ol3 SET Country = 'Guinea-Bissau' WHERE NOC = 'GBS';
UPDATE ol3 SET Country = 'Independent Olympic Athletes' WHERE NOC = 'IOA';
UPDATE ol3 SET Country = 'United States Virgin Islands' WHERE NOC = 'ISV';
UPDATE ol3 SET Country = 'British Virgin Islands' WHERE NOC = 'IVB';
UPDATE ol3 SET Country = 'Lebanon' WHERE NOC = 'LIB';
UPDATE ol3 SET Country = 'Marshall Islands' WHERE NOC = 'MHL';
UPDATE ol3 SET Country = 'Palestine' WHERE NOC = 'PLE';
UPDATE ol3 SET Country = 'North Korea' WHERE NOC = 'PRK';
UPDATE ol3 SET Country = 'Refugee Olympic Team' WHERE NOC = 'ROT';
UPDATE ol3 SET Country = 'Serbia and Montenegro' WHERE NOC = 'SCG';
UPDATE ol3 SET Country = 'South Sudan' WHERE NOC = 'SSD';
UPDATE ol3 SET Country = 'Eswatini'  WHERE NOC = 'SWZ';
UPDATE ol3 SET Country = 'Czechoslovakia' WHERE NOC = 'TCH';


--now want get total count of atheletes participated in single olympic by respect to country 
select *
from ol3


-- create table for total athletes - total_athletes
select Year , Country ,  count(distinct Name) as total_athletes
into total_athletes
from ol3 
group by year , Country
order by 1 desc



select *
from total_athletes

---get another table for total medals , gold , silver and bronze medals
-- for this need to remove team members get team as one medal


-- remove duplicates 
select *
into ol4
from ol3

select *
from ol4

-- as first need to remove N/A from medal column 
select distinct Medal
from ol4

select *
into ol4_1
from ol4
where Medal in ('Gold','Silver','Bronze')


select *
from ol4_1


-- use CTE for that - get duplicates
with get_duplicate as(
select 
row_number() over (partition by  Country , Year,Sport,Event,NOC,Medal  order by (select NULL) ) as row_num, 
*
from ol4_1
)
select *
from get_duplicate
where row_num > 1


--delete duplicates ( team members)
with get_duplicate as(
select 
row_number() over (partition by  Country , Year,Sport,Event,NOC,Medal  order by (select NULL) ) as row_num, 
*
from ol4_1
)
delete
from get_duplicate
where row_num > 1



--now move into medal counts 

select
    Year,
    Country,
    
    count(case when Medal = 'Gold' then 1 end) as Gold_Medals,
    count(case when  Medal = 'Silver' then 1 end) as Silver_Medals,
    count(case when  Medal = 'Bronze' then 1 end) as Bronze_Medals,
	count(*) as Total_Medals
into Total_Medals
from ol4_1
where Medal IN ('Gold', 'Silver', 'Bronze')  -- To exclude 'N/A' from the counts
group by Year, Country
order by Year


select *
from Total_Medals

---- now combined Total_Medals and total_athletes - medal_and_athletes

select
    m.Year,
    m.Country,
    m.Total_Medals,
    m.Gold_Medals,
    m.Silver_Medals,
    m.Bronze_Medals,
    a.Total_Athletes
into medal_and_athletes
from
    Total_Medals as m
join
    Total_Athletes as a
on
    m.Year = a.Year 
    AND m.Country = a.Country
order by 
    m.Year desc, 
    m.Country



-- count ob paricipated events 
-- for that need to remove team members but not medals . 


select *
into ol4_2
from ol4



select *
from ol4_2


-- use CTE for that - get duplicates
with get_duplicate as(
select 
row_number() over (partition by  Country , Year,Sport,Event,NOC  order by (select NULL) ) as row_num, 
*
from ol4_2
)
select *
from get_duplicate
where row_num > 1


--delete duplicates ( team members)
with get_duplicate as(
select 
row_number() over (partition by  Country , Year,Sport,Event,NOC  order by (select NULL) ) as row_num, 
*
from ol4_2
)
delete
from get_duplicate
where row_num > 1

-- now can get count of event 
select Year , Country , count(distinct Event) as Events_Count
into Events_Count
from ol4_2
group by Year , Country
order by Year

-- join Events_Count to medal_and_athletes

SELECT 
    m.Year,
    m.Country,
    m.Total_Medals,
    m.Gold_Medals,
    m.Silver_Medals,
    m.Bronze_Medals,
    m.Total_Athletes,
    e.Events_Count
into summary
FROM 
    medal_and_athletes AS m
JOIN 
    Events_Count AS e
ON 
    m.Year = e.Year 
    AND m.Country = e.Country
ORDER BY 
    m.Year DESC, 
    m.Country;




select *
from summary


select *
from ol4

--add host countries to summary 
-- host or not 
-- host - 1 , not - 0


select *
from summary

alter table summary
add Host_or_Not float


update summary
set Host_or_Not = 1 
where Year =1992 
and Country = 'Spain'


update summary
set Host_or_Not = 1 
where Year =1996 
and Country = 'United States'



update summary
set Host_or_Not = 1 
where Year =2000 
and Country = 'Australia'

update summary
set Host_or_Not = 1 
where Year =2004
and Country = 'Greece'

update summary
set Host_or_Not = 1 
where Year =2008
and Country = 'China'

update summary
set Host_or_Not = 1 
where Year =2012
and Country = 'United Kingdom'


update summary
set Host_or_Not = 1 
where Year =2016 
and Country = 'Brazil'



update summary
set Host_or_Not = 0 
where Host_or_Not is null




select *
from summary

--add Country code 

select distinct Country
from summary

alter table summary
add Country_Code Varchar(255)

-- Update Afghanistan
UPDATE summary SET Country_Code = 'AFG' WHERE Country = 'Afghanistan';

-- Update Algeria
UPDATE summary SET Country_Code = 'ALG' WHERE Country = 'Algeria';

-- Update Argentina
UPDATE summary SET Country_Code = 'ARG' WHERE Country = 'Argentina';

-- Update Armenia
UPDATE summary SET Country_Code = 'ARM' WHERE Country = 'Armenia';

-- Update Australia
UPDATE summary SET Country_Code = 'AUS' WHERE Country = 'Australia';

-- Update Austria
UPDATE summary SET Country_Code = 'AUT' WHERE Country = 'Austria';

-- Update Azerbaijan
UPDATE summary SET Country_Code = 'AZE' WHERE Country = 'Azerbaijan';

-- Update Bahamas
UPDATE summary SET Country_Code = 'BAH' WHERE Country = 'Bahamas';

-- Update Bahrain
UPDATE summary SET Country_Code = 'BRN' WHERE Country = 'Bahrain';

-- Update Barbados
UPDATE summary SET Country_Code = 'BAR' WHERE Country = 'Barbados';

-- Update Belarus
UPDATE summary SET Country_Code = 'BLR' WHERE Country = 'Belarus';

-- Update Belgium
UPDATE summary SET Country_Code = 'BEL' WHERE Country = 'Belgium';

-- Update Botswana
UPDATE summary SET Country_Code = 'BOT' WHERE Country = 'Botswana';

-- Update Brazil
UPDATE summary SET Country_Code = 'BRA' WHERE Country = 'Brazil';

-- Update Bulgaria
UPDATE summary SET Country_Code = 'BUL' WHERE Country = 'Bulgaria';

-- Update Burundi
UPDATE summary SET Country_Code = 'BDI' WHERE Country = 'Burundi';

-- Update Cameroon
UPDATE summary SET Country_Code = 'CMR' WHERE Country = 'Cameroon';

-- Update Canada
UPDATE summary SET Country_Code = 'CAN' WHERE Country = 'Canada';

-- Update Chile
UPDATE summary SET Country_Code = 'CHI' WHERE Country = 'Chile';

-- Update China
UPDATE summary SET Country_Code = 'CHN' WHERE Country = 'China';

-- Update Chinese Taipei
UPDATE summary SET Country_Code = 'TPE' WHERE Country = 'Chinese Taipei';

-- Update Colombia
UPDATE summary SET Country_Code = 'COL' WHERE Country = 'Colombia';

-- Update Costa Rica
UPDATE summary SET Country_Code = 'CRC' WHERE Country = 'Costa Rica';



-- Update Croatia
UPDATE summary SET Country_Code = 'CRO' WHERE Country = 'Croatia';

-- Update Cuba
UPDATE summary SET Country_Code = 'CUB' WHERE Country = 'Cuba';

-- Update Cyprus
UPDATE summary SET Country_Code = 'CYP' WHERE Country = 'Cyprus';

-- Update Czech Republic
UPDATE summary SET Country_Code = 'CZE' WHERE Country = 'Czech Republic';

-- Update Czechoslovakia
UPDATE summary SET Country_Code = 'TCH' WHERE Country = 'Czechoslovakia';

-- Update Denmark
UPDATE summary SET Country_Code = 'DEN' WHERE Country = 'Denmark';

-- Update Dominican Republic
UPDATE summary SET Country_Code = 'DOM' WHERE Country = 'Dominican Republic';

-- Update Ecuador
UPDATE summary SET Country_Code = 'ECU' WHERE Country = 'Ecuador';

-- Update Egypt
UPDATE summary SET Country_Code = 'EGY' WHERE Country = 'Egypt';

-- Update Eritrea
UPDATE summary SET Country_Code = 'ERI' WHERE Country = 'Eritrea';

-- Update Estonia
UPDATE summary SET Country_Code = 'EST' WHERE Country = 'Estonia';

-- Update Ethiopia
UPDATE summary SET Country_Code = 'ETH' WHERE Country = 'Ethiopia';

-- Update Fiji
UPDATE summary SET Country_Code = 'FIJ' WHERE Country = 'Fiji';

-- Update Finland
UPDATE summary SET Country_Code = 'FIN' WHERE Country = 'Finland';

-- Update France
UPDATE summary SET Country_Code = 'FRA' WHERE Country = 'France';

-- Update Gabon
UPDATE summary SET Country_Code = 'GAB' WHERE Country = 'Gabon';

-- Update Georgia
UPDATE summary SET Country_Code = 'GEO' WHERE Country = 'Georgia';

-- Update Germany
UPDATE summary SET Country_Code = 'GER' WHERE Country = 'Germany';

-- Update Ghana
UPDATE summary SET Country_Code = 'GHA' WHERE Country = 'Ghana';

-- Update Greece
UPDATE summary SET Country_Code = 'GRE' WHERE Country = 'Greece';

-- Update Grenada
UPDATE summary SET Country_Code = 'GRD' WHERE Country = 'Grenada';

-- Update Guatemala
UPDATE summary SET Country_Code = 'GUA' WHERE Country = 'Guatemala';

-- Update Hong Kong
UPDATE summary SET Country_Code = 'HKG' WHERE Country = 'Hong Kong';

-- Update Hungary
UPDATE summary SET Country_Code = 'HUN' WHERE Country = 'Hungary';

-- Update Iceland
UPDATE summary SET Country_Code = 'ISL' WHERE Country = 'Iceland';

-- Update Independent Olympic Athletes
UPDATE summary SET Country_Code = 'IOA' WHERE Country = 'Independent Olympic Athletes';

-- Update India
UPDATE summary SET Country_Code = 'IND' WHERE Country = 'India';

-- Update Indonesia
UPDATE summary SET Country_Code = 'INA' WHERE Country = 'Indonesia';

-- Update Iran
UPDATE summary SET Country_Code = 'IRI' WHERE Country = 'Iran';

-- Update Ireland
UPDATE summary SET Country_Code = 'IRL' WHERE Country = 'Ireland';

-- Update Israel
UPDATE summary SET Country_Code = 'ISR' WHERE Country = 'Israel';

-- Update Italy
UPDATE summary SET Country_Code = 'ITA' WHERE Country = 'Italy';

-- Update Jamaica
UPDATE summary SET Country_Code = 'JAM' WHERE Country = 'Jamaica';

-- Update Japan
UPDATE summary SET Country_Code = 'JPN' WHERE Country = 'Japan';

-- Update Jordan
UPDATE summary SET Country_Code = 'JOR' WHERE Country = 'Jordan';

-- Update Kazakhstan
UPDATE summary SET Country_Code = 'KAZ' WHERE Country = 'Kazakhstan';

-- Update Kenya
UPDATE summary SET Country_Code = 'KEN' WHERE Country = 'Kenya';

-- Update Kosovo
UPDATE summary SET Country_Code = 'KOS' WHERE Country = 'Kosovo';

-- Update Kuwait
UPDATE summary SET Country_Code = 'KUW' WHERE Country = 'Kuwait';

-- Update Kyrgyzstan
UPDATE summary SET Country_Code = 'KGZ' WHERE Country = 'Kyrgyzstan';

-- Update Latvia
UPDATE summary SET Country_Code = 'LVA' WHERE Country = 'Latvia';

-- Update Lithuania
UPDATE summary SET Country_Code = 'LTU' WHERE Country = 'Lithuania';

-- Update Malaysia
UPDATE summary SET Country_Code = 'MAS' WHERE Country = 'Malaysia';

-- Update Mauritius
UPDATE summary SET Country_Code = 'MRI' WHERE Country = 'Mauritius';

-- Update Mexico
UPDATE summary SET Country_Code = 'MEX' WHERE Country = 'Mexico';

-- Update Moldova
UPDATE summary SET Country_Code = 'MDA' WHERE Country = 'Moldova';

-- Update Mongolia
UPDATE summary SET Country_Code = 'MGL' WHERE Country = 'Mongolia';

-- Update Montenegro
UPDATE summary SET Country_Code = 'MNE' WHERE Country = 'Montenegro';

-- Update Morocco
UPDATE summary SET Country_Code = 'MAR' WHERE Country = 'Morocco';

-- Update Mozambique
UPDATE summary SET Country_Code = 'MOZ' WHERE Country = 'Mozambique';

-- Update Namibia
UPDATE summary SET Country_Code = 'NAM' WHERE Country = 'Namibia';

-- Update Netherlands
UPDATE summary SET Country_Code = 'NED' WHERE Country = 'Netherlands';

-- Update New Zealand
UPDATE summary SET Country_Code = 'NZL' WHERE Country = 'New Zealand';

-- Update Niger
UPDATE summary SET Country_Code = 'NIG' WHERE Country = 'Niger';

-- Update Nigeria
UPDATE summary SET Country_Code = 'NGR' WHERE Country = 'Nigeria';

-- Update North Korea
UPDATE summary SET Country_Code = 'PRK' WHERE Country = 'North Korea';

-- Update North Macedonia
UPDATE summary SET Country_Code = 'MKD' WHERE Country = 'North Macedonia';

-- Update Norway
UPDATE summary SET Country_Code = 'NOR' WHERE Country = 'Norway';

-- Update Pakistan
UPDATE summary SET Country_Code = 'PAK' WHERE Country = 'Pakistan';

-- Update Panama
UPDATE summary SET Country_Code = 'PAN' WHERE Country = 'Panama';

-- Update Paraguay
UPDATE summary SET Country_Code = 'PAR' WHERE Country = 'Paraguay';

-- Update Peru
UPDATE summary SET Country_Code = 'PER' WHERE Country = 'Peru';

-- Update Philippines
UPDATE summary SET Country_Code = 'PHI' WHERE Country = 'Philippines';

-- Update Poland
UPDATE summary SET Country_Code = 'POL' WHERE Country = 'Poland';

-- Update Portugal
UPDATE summary SET Country_Code = 'POR' WHERE Country = 'Portugal';

-- Update Puerto Rico
UPDATE summary SET Country_Code = 'PUR' WHERE Country = 'Puerto Rico';

-- Update Qatar
UPDATE summary SET Country_Code = 'QAT' WHERE Country = 'Qatar';

-- Update Romania
UPDATE summary SET Country_Code = 'ROU' WHERE Country = 'Romania';

-- Update Russian Federation
UPDATE summary SET Country_Code = 'RUS' WHERE Country = 'Russian Federation';

-- Update Saudi Arabia
UPDATE summary SET Country_Code = 'KSA' WHERE Country = 'Saudi Arabia';

-- Update Serbia
UPDATE summary SET Country_Code = 'SRB' WHERE Country = 'Serbia';

-- Update Serbia and Montenegro
UPDATE summary SET Country_Code = 'SCG' WHERE Country = 'Serbia and Montenegro';

-- Update Singapore
UPDATE summary SET Country_Code = 'SGP' WHERE Country = 'Singapore';

-- Update Slovakia
UPDATE summary SET Country_Code = 'SVK' WHERE Country = 'Slovakia';

-- Update Slovenia
UPDATE summary SET Country_Code = 'SVN' WHERE Country = 'Slovenia';

-- Update South Africa
UPDATE summary SET Country_Code = 'RSA' WHERE Country = 'South Africa';

-- Update South Korea
UPDATE summary SET Country_Code = 'KOR' WHERE Country = 'South Korea';

-- Update Spain
UPDATE summary SET Country_Code = 'ESP' WHERE Country = 'Spain';

-- Update Sri Lanka
UPDATE summary SET Country_Code = 'SRI' WHERE Country = 'Sri Lanka';

-- Update Sudan
UPDATE summary SET Country_Code = 'SDN' WHERE Country = 'Sudan';

-- Update Suriname
UPDATE summary SET Country_Code = 'SUR' WHERE Country = 'Suriname';

-- Update Sweden
UPDATE summary SET Country_Code = 'SWE' WHERE Country = 'Sweden';

-- Update Switzerland
UPDATE summary SET Country_Code = 'CHE' WHERE Country = 'Switzerland';

-- Update Syria
UPDATE summary SET Country_Code = 'SYR' WHERE Country = 'Syria';

-- Update Tajikistan
UPDATE summary SET Country_Code = 'TJK' WHERE Country = 'Tajikistan';

-- Update Thailand
UPDATE summary SET Country_Code = 'THA' WHERE Country = 'Thailand';

-- Update Togo
UPDATE summary SET Country_Code = 'TOG' WHERE Country = 'Togo';

-- Update Tonga
UPDATE summary SET Country_Code = 'TON' WHERE Country = 'Tonga';

-- Update Trinidad and Tobago
UPDATE summary SET Country_Code = 'TTO' WHERE Country = 'Trinidad and Tobago';

-- Update Tunisia
UPDATE summary SET Country_Code = 'TUN' WHERE Country = 'Tunisia';

-- Update Turkey
UPDATE summary SET Country_Code = 'TUR' WHERE Country = 'Turkey';

-- Update Uganda
UPDATE summary SET Country_Code = 'UGA' WHERE Country = 'Uganda';

-- Update Ukraine
UPDATE summary SET Country_Code = 'UKR' WHERE Country = 'Ukraine';

-- Update Unified Team
UPDATE summary SET Country_Code = 'EUN' WHERE Country = 'Unified Team';

-- Update United Arab Emirates
UPDATE summary SET Country_Code = 'ARE' WHERE Country = 'United Arab Emirates';

-- Update United Kingdom
UPDATE summary SET Country_Code = 'GBR' WHERE Country = 'United Kingdom';

-- Update United States
UPDATE summary SET Country_Code = 'USA' WHERE Country = 'United States';

-- Update Uruguay
UPDATE summary SET Country_Code = 'URU' WHERE Country = 'Uruguay';

-- Update Uzbekistan
UPDATE summary SET Country_Code = 'UZB' WHERE Country = 'Uzbekistan';

-- Update Venezuela
UPDATE summary SET Country_Code = 'VEN' WHERE Country = 'Venezuela';

-- Update Vietnam
UPDATE summary SET Country_Code = 'VNM' WHERE Country = 'Vietnam';

-- Update Zambia
UPDATE summary SET Country_Code = 'ZMB' WHERE Country = 'Zambia';

-- Update Zimbabwe
UPDATE summary SET Country_Code = 'ZWE' WHERE Country = 'Zimbabwe';

select *
from summary

--for Null
-- Update Côte d'Ivoire
UPDATE summary SET Country_Code = 'CIV' WHERE  Country_Code is Null


select *
from summary




--------add population - GDP per capita file ---------------------------------------------------------------------------------

select *
from dbo.Data$

select *
into population_total
from dbo.Data$
where [Series Name]= 'Population, total'



SELECT 
    [Series Name],
	[Country Name] as C_name,
	[Country Code] As C_Code,
    [1992 (YR1992)] AS Year_1992,
    [1996 (YR1996)] AS Year_1996,
    [2000 (YR2000)] AS Year_2000,
    [2004 (YR2004)] AS Year_2004,
    [2008 (YR2008)] AS Year_2008,
    [2012 (YR2012)] AS Year_2012,
    [2016 (YR2016)] AS Year_2016,
    [2020 (YR2020)] AS Year_2020
into population_total_1
from 
    population_total

select *
from population_total_1


-------------------------------------------------------------
select *
into s1
from summary

alter table s1
add population_total varchar(255)

select *
from s1

-- Update for year 1992
UPDATE s1
SET population_total = pt.Year_1992
FROM s1 s
JOIN population_total_1 pt
ON s.Country = pt.C_name
WHERE s.Year = 1992 AND pt.Year_1992 IS NOT NULL;

UPDATE s1
SET population_total = pt.Year_1992
FROM s1 s
JOIN population_total_1 pt
ON s.Country_Code = pt.C_Code
WHERE s.Year = 1992 AND pt.Year_1992 IS NOT NULL;

-- Update for year 1996
UPDATE s1
SET population_total = pt.Year_1996
FROM s1 s
JOIN population_total_1 pt
ON s.Country_Code = pt.C_Code
WHERE s.Year = 1996 AND pt.Year_1996 IS NOT NULL;

-- Update for year 2000
UPDATE s1
SET population_total = pt.Year_2000
FROM s1 s
JOIN population_total_1 pt
ON s.Country_Code = pt.C_Code
WHERE s.Year = 2000 AND pt.Year_2000 IS NOT NULL;

-- Update for year 2004
UPDATE s1
SET population_total = pt.Year_2004
FROM s1 s
JOIN population_total_1 pt
ON s.Country_Code = pt.C_Code
WHERE s.Year = 2004 AND pt.Year_2004 IS NOT NULL;

-- Update for year 2008
UPDATE s1
SET population_total = pt.Year_2008
FROM s1 s
JOIN population_total_1 pt
ON s.Country_Code = pt.C_Code
WHERE s.Year = 2008 AND pt.Year_2008 IS NOT NULL;

-- Update for year 2012
UPDATE s1
SET population_total = pt.Year_2012
FROM s1 s
JOIN population_total_1 pt
ON s.Country_Code = pt.C_Code
WHERE s.Year = 2012 AND pt.Year_2012 IS NOT NULL;

-- Update for year 2016
UPDATE s1
SET population_total = pt.Year_2016
FROM s1 s
JOIN population_total_1 pt
ON s.Country_Code = pt.C_Code
WHERE s.Year = 2016 AND pt.Year_2016 IS NOT NULL;


-- Update for year 1996
UPDATE s1
SET population_total = pt.Year_1996
FROM s1 s
JOIN population_total_1 pt
ON s.Country = pt.C_name
WHERE s.Year = 1996 AND pt.Year_1996 IS NOT NULL;

-- Update for year 2000
UPDATE s1
SET population_total = pt.Year_2000
FROM s1 s
JOIN population_total_1 pt
ON s.Country = pt.C_name
WHERE s.Year = 2000 AND pt.Year_2000 IS NOT NULL;

-- Update for year 2004
UPDATE s1
SET population_total = pt.Year_2004
FROM s1 s
JOIN population_total_1 pt
ON s.Country = pt.C_name
WHERE s.Year = 2004 AND pt.Year_2004 IS NOT NULL;

-- Update for year 2008
UPDATE s1
SET population_total = pt.Year_2008
FROM s1 s
JOIN population_total_1 pt
ON s.Country = pt.C_name
WHERE s.Year = 2008 AND pt.Year_2008 IS NOT NULL;

-- Update for year 2012
UPDATE s1
SET population_total = pt.Year_2012
FROM s1 s
JOIN population_total_1 pt
ON s.Country = pt.C_name
WHERE s.Year = 2012 AND pt.Year_2012 IS NOT NULL;

-- Update for year 2016
UPDATE s1
SET population_total = pt.Year_2016
FROM s1 s
JOIN population_total_1 pt
ON s.Country = pt.C_name
WHERE s.Year = 2016 AND pt.Year_2016 IS NOT NULL;


--check Nulls 
select *
from s1
where population_total is null

--update iran c_code as IRN
update s1
set Country_Code ='IRN'
where Country = 'Iran'


update s1
set Country_Code ='BHS'
where Country = 'Bahamas'

update s1
set Country_Code ='BHS'
where Country = 'Bahamas'


select *
from population_total_1
where C_name like '%Tai%'


------------------------------------------------------------------------------------------------
select *
into population_growth_annual
from dbo.Data$
where [Series Name]= 'Population growth (annual %)'

select *
from population_growth_annual



--add another column for s1
alter table s1
add population_growth  varchar(255)

select *
from s1

-- Update for year 1992
UPDATE s1
SET population_growth = pga.[1992 (YR1992)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country_Code = pga.[Country Code]
WHERE s.Year = 1992 AND pga.[1992 (YR1992)] IS NOT NULL;

-- Update for year 1996
UPDATE s1
SET population_growth = pga.[1996 (YR1996)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country_Code = pga.[Country Code]
WHERE s.Year = 1996 AND pga.[1996 (YR1996)] IS NOT NULL;

-- Update for year 2000
UPDATE s1
SET population_growth = pga.[2000 (YR2000)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country_Code = pga.[Country Code]
WHERE s.Year = 2000 AND pga.[2000 (YR2000)] IS NOT NULL;

-- Update for year 2004
UPDATE s1
SET population_growth = pga.[2004 (YR2004)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country_Code = pga.[Country Code]
WHERE s.Year = 2004 AND pga.[2004 (YR2004)] IS NOT NULL;

-- Update for year 2008
UPDATE s1
SET population_growth = pga.[2008 (YR2008)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country_Code = pga.[Country Code]
WHERE s.Year = 2008 AND pga.[2008 (YR2008)] IS NOT NULL;

-- Update for year 2012
UPDATE s1
SET population_growth = pga.[2012 (YR2012)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country_Code = pga.[Country Code]
WHERE s.Year = 2012 AND pga.[2012 (YR2012)] IS NOT NULL;

-- Update for year 2016
UPDATE s1
SET population_growth = pga.[2016 (YR2016)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country_Code = pga.[Country Code]
WHERE s.Year = 2016 AND pga.[2016 (YR2016)] IS NOT NULL;

--
-- Update for year 1992
UPDATE s1
SET population_growth = pga.[1992 (YR1992)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country = pga.[Country Name]
WHERE s.Year = 1992 AND pga.[1992 (YR1992)] IS NOT NULL;

-- Update for year 1996
UPDATE s1
SET population_growth = pga.[1996 (YR1996)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country = pga.[Country Name]
WHERE s.Year = 1996 AND pga.[1996 (YR1996)] IS NOT NULL;

-- Update for year 2000
UPDATE s1
SET population_growth = pga.[2000 (YR2000)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country = pga.[Country Name]
WHERE s.Year = 2000 AND pga.[2000 (YR2000)] IS NOT NULL;

-- Update for year 2004
UPDATE s1
SET population_growth = pga.[2004 (YR2004)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country = pga.[Country Name]
WHERE s.Year = 2004 AND pga.[2004 (YR2004)] IS NOT NULL;

-- Update for year 2008
UPDATE s1
SET population_growth = pga.[2008 (YR2008)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country = pga.[Country Name]
WHERE s.Year = 2008 AND pga.[2008 (YR2008)] IS NOT NULL;

-- Update for year 2012
UPDATE s1
SET population_growth = pga.[2012 (YR2012)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country = pga.[Country Name]
WHERE s.Year = 2012 AND pga.[2012 (YR2012)] IS NOT NULL;

-- Update for year 2016
UPDATE s1
SET population_growth = pga.[2016 (YR2016)]
FROM s1 s
JOIN population_growth_annual pga
ON s.Country = pga.[Country Name]
WHERE s.Year = 2016 AND pga.[2016 (YR2016)] IS NOT NULL;



select *
from s1
where population_growth is null

--------------------------------------------------------------------------GNI per capita, Atlas method (current US$) --------------------------------
select *
into GNI_per_capita
from dbo.Data$
where [Series Name]= 'GNI per capita, Atlas method (current US$)'

select *
from GNI_per_capita


alter table s1
add GNI_per_capita varchar(255)

select *
from s1


-- Update for year 1992
UPDATE s1
SET GNI_per_capita = gni.[1992 (YR1992)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 1992 AND gni.[1992 (YR1992)] IS NOT NULL;

-- Update for year 1996
UPDATE s1
SET GNI_per_capita = gni.[1996 (YR1996)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 1996 AND gni.[1996 (YR1996)] IS NOT NULL;

-- Update for year 2000
UPDATE s1
SET GNI_per_capita = gni.[2000 (YR2000)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2000 AND gni.[2000 (YR2000)] IS NOT NULL;

-- Update for year 2004
UPDATE s1
SET GNI_per_capita = gni.[2004 (YR2004)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2004 AND gni.[2004 (YR2004)] IS NOT NULL;

-- Update for year 2008
UPDATE s1
SET GNI_per_capita = gni.[2008 (YR2008)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2008 AND gni.[2008 (YR2008)] IS NOT NULL;

-- Update for year 2012
UPDATE s1
SET GNI_per_capita = gni.[2012 (YR2012)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2012 AND gni.[2012 (YR2012)] IS NOT NULL;

-- Update for year 2016
UPDATE s1
SET GNI_per_capita = gni.[2016 (YR2016)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2016 AND gni.[2016 (YR2016)] IS NOT NULL;


UPDATE s1
SET GNI_per_capita = gni.[2016 (YR2016)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country = gni.[Country Name]
WHERE s.Year = 2016 AND gni.[2016 (YR2016)] IS NOT NULL;

-- Update for the year 1992
UPDATE s1
SET GNI_per_capita = gni.[1992 (YR1992)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 1992 AND gni.[1992 (YR1992)] IS NOT NULL;

-- Update for the year 1996
UPDATE s1
SET GNI_per_capita = gni.[1996 (YR1996)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 1996 AND gni.[1996 (YR1996)] IS NOT NULL;

-- Update for the year 2000
UPDATE s1
SET GNI_per_capita = gni.[2000 (YR2000)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 2000 AND gni.[2000 (YR2000)] IS NOT NULL;

-- Update for the year 2004
UPDATE s1
SET GNI_per_capita = gni.[2004 (YR2004)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 2004 AND gni.[2004 (YR2004)] IS NOT NULL;

-- Update for the year 2008
UPDATE s1
SET GNI_per_capita = gni.[2008 (YR2008)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 2008 AND gni.[2008 (YR2008)] IS NOT NULL;

-- Update for the year 2012
UPDATE s1
SET GNI_per_capita = gni.[2012 (YR2012)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 2012 AND gni.[2012 (YR2012)] IS NOT NULL;

-- Update for the year 2016
UPDATE s1
SET GNI_per_capita = gni.[2016 (YR2016)]
FROM s1 s
JOIN GNI_per_capita gni
ON s.Country_Code = gni.[Country Code]
WHERE s.Year = 2016 AND gni.[2016 (YR2016)] IS NOT NULL;


select *
from GNI_per_capita

----------------------------------------------------------GDP (current US$)--------------------------------------------


select *
into GDP
from dbo.Data$
where [Series Name]= 'GDP (current US$)'

select *
from GDP


alter table s1
add GDP varchar(255)

select *
from s1



-- Update for the year 1992
UPDATE s1
SET GDP = gdp.[1992 (YR1992)]
FROM s1 s
JOIN GDP gdp
ON s.Country_Code = gdp.[Country Code]
WHERE s.Year = 1992 AND gdp.[1992 (YR1992)] IS NOT NULL;

-- Update for the year 1996
UPDATE s1
SET GDP = gdp.[1996 (YR1996)]
FROM s1 s
JOIN GDP gdp
ON s.Country_Code = gdp.[Country Code]
WHERE s.Year = 1996 AND gdp.[1996 (YR1996)] IS NOT NULL;

-- Update for the year 2000
UPDATE s1
SET GDP = gdp.[2000 (YR2000)]
FROM s1 s
JOIN GDP gdp
ON s.Country_Code = gdp.[Country Code]
WHERE s.Year = 2000 AND gdp.[2000 (YR2000)] IS NOT NULL;

-- Update for the year 2004
UPDATE s1
SET GDP = gdp.[2004 (YR2004)]
FROM s1 s
JOIN GDP gdp
ON s.Country_Code = gdp.[Country Code]
WHERE s.Year = 2004 AND gdp.[2004 (YR2004)] IS NOT NULL;

-- Update for the year 2008
UPDATE s1
SET GDP = gdp.[2008 (YR2008)]
FROM s1 s
JOIN GDP gdp
ON s.Country_Code = gdp.[Country Code]
WHERE s.Year = 2008 AND gdp.[2008 (YR2008)] IS NOT NULL;

-- Update for the year 2012
UPDATE s1
SET GDP = gdp.[2012 (YR2012)]
FROM s1 s
JOIN GDP gdp
ON s.Country_Code = gdp.[Country Code]
WHERE s.Year = 2012 AND gdp.[2012 (YR2012)] IS NOT NULL;

-- Update for the year 2016
UPDATE s1
SET GDP = gdp.[2016 (YR2016)]
FROM s1 s
JOIN GDP gdp
ON s.Country_Code = gdp.[Country Code]
WHERE s.Year = 2016 AND gdp.[2016 (YR2016)] IS NOT NULL;



-- Update for the year 1992
UPDATE s1
SET GDP = gdp.[1992 (YR1992)]
FROM s1 s
JOIN GDP gdp
ON s.Country = gdp.[Country Name]
WHERE s.Year = 1992 AND gdp.[1992 (YR1992)] IS NOT NULL;

-- Update for the year 1996
UPDATE s1
SET GDP = gdp.[1996 (YR1996)]
FROM s1 s
JOIN GDP gdp
ON s.Country = gdp.[Country Name]
WHERE s.Year = 1996 AND gdp.[1996 (YR1996)] IS NOT NULL;

-- Update for the year 2000
UPDATE s1
SET GDP = gdp.[2000 (YR2000)]
FROM s1 s
JOIN GDP gdp
ON s.Country = gdp.[Country Name]
WHERE s.Year = 2000 AND gdp.[2000 (YR2000)] IS NOT NULL;

-- Update for the year 2004
UPDATE s1
SET GDP = gdp.[2004 (YR2004)]
FROM s1 s
JOIN GDP gdp
ON s.Country = gdp.[Country Name]
WHERE s.Year = 2004 AND gdp.[2004 (YR2004)] IS NOT NULL;

-- Update for the year 2008
UPDATE s1
SET GDP = gdp.[2008 (YR2008)]
FROM s1 s
JOIN GDP gdp
ON s.Country = gdp.[Country Name]
WHERE s.Year = 2008 AND gdp.[2008 (YR2008)] IS NOT NULL;

-- Update for the year 2012
UPDATE s1
SET GDP = gdp.[2012 (YR2012)]
FROM s1 s
JOIN GDP gdp
ON s.Country = gdp.[Country Name]
WHERE s.Year = 2012 AND gdp.[2012 (YR2012)] IS NOT NULL;

-- Update for the year 2016
UPDATE s1
SET GDP = gdp.[2016 (YR2016)]
FROM s1 s
JOIN GDP gdp
ON s.Country = gdp.[Country Name]
WHERE s.Year = 2016 AND gdp.[2016 (YR2016)] IS NOT NULL;


--------------------------------------------------------------------GDP growth (annual %)----------------------------------------------------------

select *
into GDP_growth 
from dbo.Data$
where [Series Name]= 'GDP growth (annual %)'

select *
from GDP_growth


alter table s1
add GDP_growth varchar(255)

select *
from s1


-- Update for the year 1992
-- Update for the year 1992
UPDATE s1
SET GDP_growth = gdpg.[1992 (YR1992)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country_Code = gdpg.[Country Code]
WHERE s.Year = 1992 AND gdpg.[1992 (YR1992)] IS NOT NULL;

-- Update for the year 1996
UPDATE s1
SET GDP_growth = gdpg.[1996 (YR1996)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country_Code = gdpg.[Country Code]
WHERE s.Year = 1996 AND gdpg.[1996 (YR1996)] IS NOT NULL;

-- Update for the year 2000
UPDATE s1
SET GDP_growth = gdpg.[2000 (YR2000)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country_Code = gdpg.[Country Code]
WHERE s.Year = 2000 AND gdpg.[2000 (YR2000)] IS NOT NULL;

-- Update for the year 2004
UPDATE s1
SET GDP_growth = gdpg.[2004 (YR2004)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country_Code = gdpg.[Country Code]
WHERE s.Year = 2004 AND gdpg.[2004 (YR2004)] IS NOT NULL;

-- Update for the year 2008
UPDATE s1
SET GDP_growth = gdpg.[2008 (YR2008)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country_Code = gdpg.[Country Code]
WHERE s.Year = 2008 AND gdpg.[2008 (YR2008)] IS NOT NULL;

-- Update for the year 2012
UPDATE s1
SET GDP_growth = gdpg.[2012 (YR2012)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country_Code = gdpg.[Country Code]
WHERE s.Year = 2012 AND gdpg.[2012 (YR2012)] IS NOT NULL;

-- Update for the year 2016
UPDATE s1
SET GDP_growth = gdpg.[2016 (YR2016)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country_Code = gdpg.[Country Code]
WHERE s.Year = 2016 AND gdpg.[2016 (YR2016)] IS NOT NULL;


-- Update for the year 1992
UPDATE s1
SET GDP_growth = gdpg.[1992 (YR1992)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country = gdpg.[Country Name]
WHERE s.Year = 1992 AND gdpg.[1992 (YR1992)] IS NOT NULL;

-- Update for the year 1996
UPDATE s1
SET GDP_growth = gdpg.[1996 (YR1996)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country = gdpg.[Country Name]
WHERE s.Year = 1996 AND gdpg.[1996 (YR1996)] IS NOT NULL;

-- Update for the year 2000
UPDATE s1
SET GDP_growth = gdpg.[2000 (YR2000)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country = gdpg.[Country Name]
WHERE s.Year = 2000 AND gdpg.[2000 (YR2000)] IS NOT NULL;

-- Update for the year 2004
UPDATE s1
SET GDP_growth = gdpg.[2004 (YR2004)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country = gdpg.[Country Name]
WHERE s.Year = 2004 AND gdpg.[2004 (YR2004)] IS NOT NULL;

-- Update for the year 2008
UPDATE s1
SET GDP_growth = gdpg.[2008 (YR2008)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country = gdpg.[Country Name]
WHERE s.Year = 2008 AND gdpg.[2008 (YR2008)] IS NOT NULL;

-- Update for the year 2012
UPDATE s1
SET GDP_growth = gdpg.[2012 (YR2012)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country = gdpg.[Country Name]
WHERE s.Year = 2012 AND gdpg.[2012 (YR2012)] IS NOT NULL;

-- Update for the year 2016
UPDATE s1
SET GDP_growth = gdpg.[2016 (YR2016)]
FROM s1 s
JOIN GDP_growth gdpg
ON s.Country = gdpg.[Country Name]
WHERE s.Year = 2016 AND gdpg.[2016 (YR2016)] IS NOT NULL;




---------------------------------------------------------------[dbo].['world-regions-according-to-the-$']---------------------------------------------------------------------



select *
from s1

USE [olympics1]
GO

SELECT [Entity]
      ,[Code]
      ,[Year]
      ,[World Region according to the World Bank]
  FROM [dbo].['world-regions-according-to-the-$']

GO


select *
from [dbo].['world-regions-according-to-the-$']


select *
into s2
from s1

alter table s2
add Region varchar(255)


select *
from s2


UPDATE s2
SET Region = wr.[World Region according to the World Bank]
FROM s2
JOIN [dbo].['world-regions-according-to-the-$'] wr
ON s2.Country = wr.Entity
WHERE wr.[World Region according to the World Bank] IS NOT NULL;

UPDATE s2
SET Region = wr.[World Region according to the World Bank]
FROM s2
JOIN [dbo].['world-regions-according-to-the-$'] wr
ON s2.Country_Code = wr.Code
WHERE wr.[World Region according to the World Bank] IS NOT NULL;


--------------------------------------------------------[dbo].[gdp_per_capita$]-------------------------------------------------------------------------

USE [olympics1]
GO

SELECT [Country Name]
      ,[Country Code]
      ,[Indicator Name]
      ,[Indicator Code]
      ,[1992]
      ,[1996]
      ,[2000]
      ,[2004]
      ,[2008]
      ,[2012]
      ,[2016]
      ,[2020]
  FROM [dbo].[gdp_per_capita$]

GO


select *
into s3
from s2

alter table s3
add GDP_per_capita varchar(255)


select *
from s3


-- Update for the year 1992
UPDATE s3
SET GDP_per_capita = gdpc.[1992]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country = gdpc.[Country Name]
WHERE s.Year = 1992 AND gdpc.[1992] IS NOT NULL;

-- Update for the year 1996
UPDATE s3
SET GDP_per_capita = gdpc.[1996]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country = gdpc.[Country Name]
WHERE s.Year = 1996 AND gdpc.[1996] IS NOT NULL;

-- Update for the year 2000
UPDATE s3
SET GDP_per_capita = gdpc.[2000]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country = gdpc.[Country Name]
WHERE s.Year = 2000 AND gdpc.[2000] IS NOT NULL;

-- Update for the year 2004
UPDATE s3
SET GDP_per_capita = gdpc.[2004]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country = gdpc.[Country Name]
WHERE s.Year = 2004 AND gdpc.[2004] IS NOT NULL;

-- Update for the year 2008
UPDATE s3
SET GDP_per_capita = gdpc.[2008]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country = gdpc.[Country Name]
WHERE s.Year = 2008 AND gdpc.[2008] IS NOT NULL;

-- Update for the year 2012
UPDATE s3
SET GDP_per_capita = gdpc.[2012]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country = gdpc.[Country Name]
WHERE s.Year = 2012 AND gdpc.[2012] IS NOT NULL;

-- Update for the year 2016
UPDATE s3
SET GDP_per_capita = gdpc.[2016]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country = gdpc.[Country Name]
WHERE s.Year = 2016 AND gdpc.[2016] IS NOT NULL;

-- Update for the year 1992
UPDATE s3
SET GDP_per_capita = gdpc.[1992]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country_Code = gdpc.[Country Code]
WHERE s.Year = 1992 AND gdpc.[1992] IS NOT NULL;

-- Update for the year 1996
UPDATE s3
SET GDP_per_capita = gdpc.[1996]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country_Code = gdpc.[Country Code]
WHERE s.Year = 1996 AND gdpc.[1996] IS NOT NULL;

-- Update for the year 2000
UPDATE s3
SET GDP_per_capita = gdpc.[2000]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country_Code = gdpc.[Country Code]
WHERE s.Year = 2000 AND gdpc.[2000] IS NOT NULL;

-- Update for the year 2004
UPDATE s3
SET GDP_per_capita = gdpc.[2004]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country_Code = gdpc.[Country Code]
WHERE s.Year = 2004 AND gdpc.[2004] IS NOT NULL;

-- Update for the year 2008
UPDATE s3
SET GDP_per_capita = gdpc.[2008]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country_Code = gdpc.[Country Code]
WHERE s.Year = 2008 AND gdpc.[2008] IS NOT NULL;

-- Update for the year 2012
UPDATE s3
SET GDP_per_capita = gdpc.[2012]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country_Code = gdpc.[Country Code]
WHERE s.Year = 2012 AND gdpc.[2012] IS NOT NULL;

-- Update for the year 2016
UPDATE s3
SET GDP_per_capita = gdpc.[2016]
FROM s3 s
JOIN [dbo].[gdp_per_capita$] gdpc
ON s.Country_Code = gdpc.[Country Code]
WHERE s.Year = 2016 AND gdpc.[2016] IS NOT NULL;


-----------------------------------------------------------------[dbo].['population %$']-----------------------------------------------------------------
USE [olympics1]
GO

SELECT [Series Name]
      ,[Country Name]
      ,[Country Code]
      ,[1992 (YR1992)]
      ,[1996 (YR1996)]
      ,[2000 (YR2000)]
      ,[2004 (YR2004)]
      ,[2008 (YR2008)]
      ,[2012 (YR2012)]
      ,[2016 (YR2016)]
      ,[2020 (YR2020)]
      ,[1992]
      ,[1996]
      ,[2000]
      ,[2004]
      ,[2008]
      ,[2012]
      ,[2016]
      ,[2020]
  FROM [dbo].['population %$']

GO



select *
from s3

select *
into s4
from s3

alter table s4
add Population_Percentage float


select *
from s4



-- Update for 1992
UPDATE s4
SET Population_Percentage = pp.[1992]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country_Code = pp.[Country Code]
WHERE s.Year = 1992 AND pp.[1992] IS NOT NULL;

-- Update for 1996
UPDATE s4
SET Population_Percentage = pp.[1996]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country_Code = pp.[Country Code]
WHERE s.Year = 1996 AND pp.[1996] IS NOT NULL;

-- Update for 2000
UPDATE s4
SET Population_Percentage = pp.[2000]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country_Code = pp.[Country Code]
WHERE s.Year = 2000 AND pp.[2000] IS NOT NULL;

-- Update for 2004
UPDATE s4
SET Population_Percentage = pp.[2004]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country_Code = pp.[Country Code]
WHERE s.Year = 2004 AND pp.[2004] IS NOT NULL;

-- Update for 2008
UPDATE s4
SET Population_Percentage = pp.[2008]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country_Code = pp.[Country Code]
WHERE s.Year = 2008 AND pp.[2008] IS NOT NULL;

-- Update for 2012
UPDATE s4
SET Population_Percentage = pp.[2012]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country_Code = pp.[Country Code]
WHERE s.Year = 2012 AND pp.[2012] IS NOT NULL;

-- Update for 2016
UPDATE s4
SET Population_Percentage = pp.[2016]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country_Code = pp.[Country Code]
WHERE s.Year = 2016 AND pp.[2016] IS NOT NULL;



-- Update for 1992
UPDATE s4
SET Population_Percentage = pp.[1992]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country = pp.[Country Name]
WHERE s.Year = 1992 AND pp.[1992] IS NOT NULL;

-- Update for 1996
UPDATE s4
SET Population_Percentage = pp.[1996]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country = pp.[Country Name]
WHERE s.Year = 1996 AND pp.[1996] IS NOT NULL;

-- Update for 2000
UPDATE s4
SET Population_Percentage = pp.[2000]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country= pp.[Country Name]
WHERE s.Year = 2000 AND pp.[2000] IS NOT NULL;

-- Update for 2004
UPDATE s4
SET Population_Percentage = pp.[2004]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country= pp.[Country Name]
WHERE s.Year = 2004 AND pp.[2004] IS NOT NULL;

-- Update for 2008
UPDATE s4
SET Population_Percentage = pp.[2008]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country= pp.[Country Name]
WHERE s.Year = 2008 AND pp.[2008] IS NOT NULL;

-- Update for 2012
UPDATE s4
SET Population_Percentage = pp.[2012]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country = pp.[Country Name]
WHERE s.Year = 2012 AND pp.[2012] IS NOT NULL;

-- Update for 2016
UPDATE s4
SET Population_Percentage = pp.[2016]
FROM s4 s
JOIN [dbo].['population %$'] pp
ON s.Country = pp.[Country Name]
WHERE s.Year = 2016 AND pp.[2016] IS NOT NULL;



------for Zimbabwe
-----0.001956538	0.001934243	0.001936797	0.001889441	0.001854948	0.001867067	0.001939181	0.002013574
update s4
set Population_Percentage = 0.001889441
where Country ='Zimbabwe'
and Year = '2004'


update s4
set Population_Percentage = 0.001854948
where Country ='Zimbabwe'
and Year = '2008'

select *
from s4

---------------------------------------------------------------[dbo].['GDP %$']--------------------------------------------------------------------------------------------

USE [olympics1]
GO

SELECT [Series Name]
      ,[Country Name]
      ,[Country Code]
      ,[1992 (YR1992)]
      ,[1996 (YR1996)]
      ,[2000 (YR2000)]
      ,[2004 (YR2004)]
      ,[2008 (YR2008)]
      ,[2012 (YR2012)]
      ,[2016 (YR2016)]
      ,[2020 (YR2020)]
      ,[1992]
      ,[1996]
      ,[2000]
      ,[2004]
      ,[2008]
      ,[2012]
      ,[2016]
      ,[2020]
  FROM [dbo].['GDP %$']

GO


select *
from s4


alter table s4
add GDP_Percentage float



-- Update for 1992
UPDATE s4
SET GDP_Percentage = GDPp.[1992]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country = GDPp.[Country Name]
WHERE s.Year = 1992 AND GDPp.[1992] IS NOT NULL;

-- Update for 1996
UPDATE s4
SET GDP_Percentage = GDPp.[1996]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country = GDPp.[Country Name]
WHERE s.Year = 1996 AND GDPp.[1996] IS NOT NULL;

-- Update for 2000
UPDATE s4
SET GDP_Percentage = GDPp.[2000]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country = GDPp.[Country Name]
WHERE s.Year = 2000 AND GDPp.[2000] IS NOT NULL;

-- Update for 2004
UPDATE s4
SET GDP_Percentage = GDPp.[2004]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country = GDPp.[Country Name]
WHERE s.Year = 2004 AND GDPp.[2004] IS NOT NULL;

-- Update for 2008
UPDATE s4
SET GDP_Percentage = GDPp.[2008]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country = GDPp.[Country Name]
WHERE s.Year = 2008 AND GDPp.[2008] IS NOT NULL;

-- Update for 2012
UPDATE s4
SET GDP_Percentage = GDPp.[2012]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country = GDPp.[Country Name]
WHERE s.Year = 2012 AND GDPp.[2012] IS NOT NULL;

-- Update for 2016
UPDATE s4
SET GDP_Percentage = GDPp.[2016]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country = GDPp.[Country Name]
WHERE s.Year = 2016 AND GDPp.[2016] IS NOT NULL;


-- Update for 1992
UPDATE s4
SET GDP_Percentage = GDPp.[1992]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country_Code = GDPp.[Country Code]
WHERE s.Year = 1992 AND GDPp.[1992] IS NOT NULL;

-- Update for 1996
UPDATE s4
SET GDP_Percentage = GDPp.[1996]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country_Code = GDPp.[Country Code]
WHERE s.Year = 1996 AND GDPp.[1996] IS NOT NULL;

-- Update for 2000
UPDATE s4
SET GDP_Percentage = GDPp.[2000]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country_Code = GDPp.[Country Code]
WHERE s.Year = 2000 AND GDPp.[2000] IS NOT NULL;

-- Update for 2004
UPDATE s4
SET GDP_Percentage = GDPp.[2004]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country_Code = GDPp.[Country Code]
WHERE s.Year = 2004 AND GDPp.[2004] IS NOT NULL;

-- Update for 2008
UPDATE s4
SET GDP_Percentage = GDPp.[2008]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country_Code = GDPp.[Country Code]
WHERE s.Year = 2008 AND GDPp.[2008] IS NOT NULL;

-- Update for 2012
UPDATE s4
SET GDP_Percentage = GDPp.[2012]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country_Code = GDPp.[Country Code]
WHERE s.Year = 2012 AND GDPp.[2012] IS NOT NULL;

-- Update for 2016
UPDATE s4
SET GDP_Percentage = GDPp.[2016]
FROM s4 s
JOIN [dbo].['GDP %$'] GDPp
ON s.Country_Code = GDPp.[Country Code]
WHERE s.Year = 2016 AND GDPp.[2016] IS NOT NULL;




select *
from s4

-------------------------------------------------------------------[dbo].['human-development-index$']----------------------------------------------
USE [olympics1]
GO

SELECT [Entity]
      ,[Code]
      ,[Year]
      ,[Human Development Index (UNDP)]
  FROM [dbo].['human-development-index$']

GO



select *
into s5
from s4

select *
from s5

alter table s5
add HDI float



UPDATE s5
SET HDI = hdi.[Human Development Index (UNDP)]
FROM s5 s
JOIN [dbo].['human-development-index$'] hdi
ON s.Country_Code = hdi.[Code]
WHERE s.Year = hdi.Year
AND s.Country = hdi.[Entity]
AND hdi.[Human Development Index (UNDP)] IS NOT NULL;


UPDATE s5
SET HDI = hdi.[Human Development Index (UNDP)]
FROM s5 s
JOIN [dbo].['human-development-index$'] hdi
ON s.Country_Code = hdi.[Code]
WHERE s.Year = hdi.Year

AND hdi.[Human Development Index (UNDP)] IS NULL;


UPDATE s5
SET HDI = hdi.[Human Development Index (UNDP)]
FROM s5 s
JOIN [dbo].['human-development-index$'] hdi
ON  s.Country = hdi.[Entity]
WHERE s.Year = hdi.Year
AND s.Country_Code = hdi.[Code]
AND hdi.[Human Development Index (UNDP)] IS NOT NULL;



UPDATE s5
SET HDI = hdi.[Human Development Index (UNDP)]
FROM s5 s
JOIN [dbo].['human-development-index$'] hdi
ON  s.Country = hdi.[Entity]
WHERE s.Year = hdi.Year

AND hdi.[Human Development Index (UNDP)] IS NOT NULL;


---fill null values 
-- For Russian Federation
update s5 set HDI = 0.708  where Country = 'Russian Federation' and Year ='1996'
update s5 set HDI = 0.732 where Country = 'Russian Federation' and Year ='2000'
update s5 set HDI = 0.761 where Country = 'Russian Federation' and Year ='2004'
update s5 set HDI = 0.791	 where Country = 'Russian Federation' and Year ='2008'
update s5 set HDI = 0.811	  where Country = 'Russian Federation' and Year ='2012'
update s5 set HDI = 0.828	  where Country = 'Russian Federation' and Year ='2016'

-- for Bahamas
update s5 set HDI = 0.787	  where Country = 'Bahamas' and Year ='1996'
update s5 set HDI = 0.732 where Country = 'Bahamas' and Year ='1992' ---

-- Côte d'Ivoire
update s5 set HDI = 0.52	  where Country = 'Côte d''Ivoireion' and Year ='2016'----

-- For Czech Republic
update s5 set HDI = 0.782  where Country = 'Czech Republic' and Year ='1996'
update s5 set HDI = 0.808 where Country = 'Czech Republic'  and Year ='2000'
update s5 set HDI = 0.836  where Country = 'Czech Republic'  and Year ='2004'
update s5 set HDI = 0.863	 where Country = 'Czech Republic'  and Year ='2008'
update s5 set HDI = 0.874	  where Country = 'Czech Republic'  and Year ='2012'
update s5 set HDI = 0.895	  where Country = 'Czech Republic'  and Year ='2016'


-- for Ethiopia - no data to find
--update s5 set HDI = 0.708  where Country = 'Ethiopia' and Year ='1996'----
--update s5 set HDI = 0.732 where Country = 'Ethiopia'  and Year ='1992'-----

-- for Georgia - no data to find
--update s5 set HDI = 0.708  where Country = 'Georgia' and Year ='1996'

-- for Hungary
update s5 set HDI = 0.710  where Country = 'Hungary'  and Year ='1992'


-- for Kosovo
--update s5 set HDI = 0.828	  where Country = 'Kosovo'  and Year ='2016'

-- for Puerto Rico
--update s5 set HDI = 0.708  where Country = 'Puerto Rico' and Year ='1996'
--update s5 set HDI = 0.732 where Country = 'Puerto Rico'  and Year ='1992'

--update s5 set HDI = 0.811	  where Country = 'Puerto Rico'  and Year ='2012'
--update s5 set HDI = 0.828	  where Country = 'Puerto Rico'  and Year ='2016'

-- for Uzbekistan
--update s5 set HDI = 0.828	  where Country = 'Uzbekistan'  and Year ='1996'






-----------------------------------------------------------------------------------------------------------------------------------------------------------------

select *
into s6
from s5

alter table s6
add Political_Stability varchar(255)

select *
from s6




--------------------------------

--final 
select *
from s5

--------------------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------2020 tokyo--------------------------------------------














































