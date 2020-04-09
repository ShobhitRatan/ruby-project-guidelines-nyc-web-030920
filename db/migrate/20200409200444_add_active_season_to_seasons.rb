class AddActiveSeasonToSeasons < ActiveRecord::Migration[6.0]
  def change
    add_column :seasons, :active_season?, :boolean 
  end
end
