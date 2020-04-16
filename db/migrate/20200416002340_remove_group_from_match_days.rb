class RemoveGroupFromMatchDays < ActiveRecord::Migration[6.0]
  def change 
    remove_column :match_days, :group, :string 
  end
end
