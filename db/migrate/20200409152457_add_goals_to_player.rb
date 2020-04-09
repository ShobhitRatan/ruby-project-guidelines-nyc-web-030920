class AddGoalsToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :goals, :integer 
  end
end
