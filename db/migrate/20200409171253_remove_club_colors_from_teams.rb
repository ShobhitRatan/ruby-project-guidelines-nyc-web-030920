class RemoveClubColorsFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :club_colors, :string
  end
end
