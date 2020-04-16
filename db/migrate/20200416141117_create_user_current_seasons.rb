class CreateUserCurrentSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :user_current_seasons do |t| 
      t.integer :user_id 
      t.integer :current_season_id 
    end 
  end
end
