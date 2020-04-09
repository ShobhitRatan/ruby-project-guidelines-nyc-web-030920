class RemoveAddressFromTeams < ActiveRecord::Migration[6.0]
  def change
    remove_column :teams, :address, :string
  end
end
