class AddDateOfBirthToPlayers < ActiveRecord::Migration[6.0]
  def change 
    add_column :players, :date_of_birth, :datetime 
  end
end
