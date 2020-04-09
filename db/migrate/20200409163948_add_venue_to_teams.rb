class AddVenueToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :venue, :string 
  end
end
