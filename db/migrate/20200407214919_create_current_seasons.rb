class CreateCurrentSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :current_seasons do |t| 
      t.integer :competition_id 
      t.integer :season_id 
      t.integer :team_id 
      t.integer :match_id 
      t.datetime :start_date 
      t.datetime :end_date 
    end 
  end
end
