class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t| 
      t.string :name 
      t.string :short_name 
      t.string :tla 
      t.string :address 
      t.string :phone 
      t.string :website 
      t.string :email 
      t.integer :founded 
      t.string :club_colors 
      t.datetime :last_updated 
    end 
  end
end
