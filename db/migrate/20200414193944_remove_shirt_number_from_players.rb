class RemoveShirtNumberFromPlayers < ActiveRecord::Migration[6.0]
  def change
    remove_column :players, :shirt_number, :integer 
  end
end
