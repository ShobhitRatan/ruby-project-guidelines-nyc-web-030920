class RemoveEmailFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :email, :string 
  end
end
