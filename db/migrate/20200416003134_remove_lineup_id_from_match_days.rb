class RemoveLineupIdFromMatchDays < ActiveRecord::Migration[6.0]
  def change
    remove_column :match_days, :lineup_id, :integer 
  end
end
