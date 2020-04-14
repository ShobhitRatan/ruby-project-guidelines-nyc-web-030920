class AddCapsToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :caps, :integer 
  end
end
