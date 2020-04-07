class CreateMatchDays < ActiveRecord::Migration[6.0]
  def change
    create_table :match_days do |t| 
      t.integer :match_id 
      t.integer :lineup_id 
      t.integer :current_season_id 
      t.datetime :utc_date 
      t.string :status 
      t.integer :attendance 
      t.string :venue 
      t.string :stage 
      t.string :group 
      t.datetime :last_updated 
    end 
  end
end
