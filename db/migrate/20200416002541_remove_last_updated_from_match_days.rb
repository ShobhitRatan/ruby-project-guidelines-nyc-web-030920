class RemoveLastUpdatedFromMatchDays < ActiveRecord::Migration[6.0]
  def change
    remove_column :match_days, :last_updated, :datetime 
  end
end
