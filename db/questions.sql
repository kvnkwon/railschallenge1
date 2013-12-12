-- What 3 towns have the highest population of citizens that are 65 years and older?
SELECT geography, age_above_65_2005 FROM town_health_records ORDER by age_above_65_2005 DESC LIMIT 3;
-- What 3 towns have the highest population of citizens that are 19 years and younger?
SELECT geography, age_under_19_2005 FROM town_health_records ORDER by age_under_19_2005 DESC LIMIT 3;
-- What 5 towns have the lowest per capita income?
SELECT geography, per_capita_income_2000 FROM town_health_records ORDER by per_capita_income_2000 LIMIT 5;
-- Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
SELECT geography, percent_teen_births_2005_to_2008 FROM town_health_records
WHERE geography NOT IN ('Boston', 'Becket','Beverly')
ORDER BY percent_teen_births_2005_to_2008
DESC
LIMIT 1;
-- Omitting Boston, what town has the highest number of infant mortalities?
SELECT percent_teen_births_2005_to_2008 FROM town_health_records;
SELECT geography, infant_deaths_2005_to_2008 FROM town_health_records
WHERE geography != 'Boston'
ORDER BY infant_deaths_2005_to_2008 DESC
LIMIT 1;