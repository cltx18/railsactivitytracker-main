class CreateFlips < ActiveRecord::Migration[6.1]
  def change
    create_table :flips do |t|
      t.date :date
      t.string :address_one
      t.string :address_two
      t.string :address_city
      t.string :address_state
      t.string :address_county
      t.string :status
      t.string :beds
      t.string :baths
      t.string :square_foot
      t.string :overview
      t.string :feature_one
      t.string :feature_two
      t.string :feature_three
      t.string :home_value
      t.string :tax_history
      t.string :price_history
      t.string :monthly_cost
      t.string :nearby_schools
      t.string :legal_protections
      t.string :home_type
      t.string :year_built
      t.string :hoa_string
      t.string :price_per_square_foot
      t.string :flooring
      t.string :heating
      t.string :cooling
      t.string :lot_size
      t.string :lot_features_string
      t.string :foundation
      t.string :roof_type
      t.string :roof_age
      t.string :water_util
      t.string :electricity_util
      t.string :sewer_util
      t.string :association_name
      t.string :annual_taxes

      t.timestamps
    end
  end
end
