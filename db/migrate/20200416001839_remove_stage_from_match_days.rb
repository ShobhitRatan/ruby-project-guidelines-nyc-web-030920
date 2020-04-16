class RemoveStageFromMatchDays < ActiveRecord::Migration[6.0]
  def change 
    remove_column :match_days, :stage, :string
  end
end
