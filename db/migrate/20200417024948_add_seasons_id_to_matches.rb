class AddSeasonsIdToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :season_id, :integer 
  end
end
