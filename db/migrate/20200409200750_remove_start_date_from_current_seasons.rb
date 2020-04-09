class RemoveStartDateFromCurrentSeasons < ActiveRecord::Migration[6.0]
  def change
    remove_column :current_seasons, :start_date, :datetime 
  end
end
