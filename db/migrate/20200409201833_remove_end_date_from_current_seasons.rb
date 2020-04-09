class RemoveEndDateFromCurrentSeasons < ActiveRecord::Migration[6.0]
  def change
    remove_column :current_seasons, :end_date, :datetime
  end
end
