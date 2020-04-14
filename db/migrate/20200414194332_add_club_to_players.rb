class AddClubToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :club, :string 
  end
end
