class AddAwayLineupIdFromMatchDays < ActiveRecord::Migration[6.0]
  def change 
    add_column :match_days, :away_lineup_id, :integer 
  end
end
