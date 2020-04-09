class RemoveFoundedFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :founded, :integer 
  end
end
