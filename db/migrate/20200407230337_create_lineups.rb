class CreateLineups < ActiveRecord::Migration[6.0]
  def change
    create_table :lineups do |t| 
      t.integer :team_id 
      t.integer :player_id 
  end
end
