class RemoveHomeTeamFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :home_team?, :boolean 
  end
end
