class AddHomeLineupIdFromMatchDays < ActiveRecord::Migration[6.0]
  def change
    add_column :match_days, :home_lineup_id, :integer 
  end
end
