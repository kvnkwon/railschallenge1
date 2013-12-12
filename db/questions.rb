# What 3 towns have the highest population of citizens that are 65 years and older?
TownHealthRecord.select(:geography, :age_above_65_2005).order(age_above_65_2005: :desc).limit(3)
# What 3 towns have the highest population of citizens that are 19 years and younger?
TownHealthRecord.select(:geography, :age_under_19_2005).order(age_under_19_2005: :desc).limit(3)
# What 5 towns have the lowest per capita income?
TownHealthRecord.select(:geography, :per_capita_income_2000).order(:per_capita_income_2000).limit(5)
# Omitting Boston, Becket, and Beverly, what town has the highest percentage of teen births?
TownHealthRecord.select(:geography, :percent_teen_births_2005_to_2008).where.not(geography: ['Boston', 'Becket', 'Beverly']).order(percent_teen_births_2005_to_2008: :desc).limit(1)
# Omitting Boston, what town has the highest number of infant mortalities?
TownHealthRecord.select(:geography, :infant_deaths_2005_to_2008).where.not(geography: 'Boston').order(infant_deaths_2005_to_2008: :desc).limit(1)