class CreateTownHealthRecords < ActiveRecord::Migration
  def change
    create_table :town_health_records do |t|
      t.string :geography, null:false
      t.integer :total_pop_2005, null:false
      t.integer :age_under_19_2005
      t.integer :age_above_65_2005
      t.float :per_capita_income_2000
      t.integer :persons_below_200_poverty_2000
      t.float :percent_all_persons_below_200_poverty_2000
      t.float :percent_adequacy_prenatal_care
      t.float :percent_c_section_deliveries_2005_to_2008
      t.integer :infant_deaths_2005_to_2008
      t.float :infant_mortality_rate_2005_to_2008
      t.float :percent_low_birthweight_2005_to_2008
      t.float :percent_multiple_births_2005_to_2008
      t.float :percent_publicly_financed_prenatal_care_2005_to_2008
      t.float :percent_teen_births_2005_to_2008
      t.timestamps
    end
  end
end
