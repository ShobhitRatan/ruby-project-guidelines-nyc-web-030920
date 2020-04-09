class AddCountryToCompetitions < ActiveRecord::Migration[6.0]
  def change
    add_column :competitions, :country, :string 
  end
end
