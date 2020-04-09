class AddHomeTeamToTeams < ActiveRecord::Migration[6.0]
  def change
    add_column :teams, :home_team?, :boolean 
  end
end
