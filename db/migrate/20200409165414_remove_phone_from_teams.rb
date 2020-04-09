class RemovePhoneFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :phone, :string 
  end
end
