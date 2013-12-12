require 'csv'
datafile = Rails.root + "db/data/mass_health_data.csv"
TownHealthRecord.destroy_all

def delete_unwanted(string)
  if string != nil
    string.tr("$,", "")
  end
end

CSV.foreach(datafile, headers: true) do |row|
  exit if row["Geography"] == "Massachusetts Total"
  TownHealthRecord.create({
      geography: row["Geography"],
      total_pop_2005: delete_unwanted(row["total pop, year 2005"]).to_i, 
      age_under_19_2005: delete_unwanted(row["age 0-19, year 2005"]).to_i,
      age_above_65_2005: delete_unwanted(row["age 65+, year 2005"]).to_i,
      per_capita_income_2000: delete_unwanted(row["Per Capita Income, year 2000"]).to_f,
      persons_below_200_poverty_2000: delete_unwanted(row["Persons Living Below 200% Poverty, year 2000 "]).to_i,
      percent_all_persons_below_200_poverty_2000: delete_unwanted(row["% all Persons Living Below 200% Poverty Level, year 2000"]).to_f,
      percent_adequacy_prenatal_care: delete_unwanted(row["% adequacy prenatal care (kotelchuck)"]).to_f,
      percent_c_section_deliveries_2005_to_2008: delete_unwanted(row["% C-section deliveries, 2005-2008"]).to_f,
      infant_deaths_2005_to_2008: delete_unwanted(row["Number of infant deaths, 2005-2008"]).to_i,
      infant_mortality_rate_2005_to_2008: delete_unwanted(row["Infant mortality rate (deaths per 1000 live births), 2005-2008"]).to_f,
      percent_low_birthweight_2005_to_2008: delete_unwanted(row["% low birthweight 2005-2008"]).to_f,
      percent_multiple_births_2005_to_2008: delete_unwanted(row["% multiple births, 2005-2008"]).to_f,
      percent_publicly_financed_prenatal_care_2005_to_2008: delete_unwanted(row["% publicly financed prenatal care, 2005-2008"]).to_f,
      percent_teen_births_2005_to_2008: delete_unwanted(row["% teen births, 2005-2008"]).to_f
    })

end
