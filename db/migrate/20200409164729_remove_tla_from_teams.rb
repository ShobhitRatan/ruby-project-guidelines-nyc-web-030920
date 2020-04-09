class RemoveTlaFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :tla, :string 
  end
end
