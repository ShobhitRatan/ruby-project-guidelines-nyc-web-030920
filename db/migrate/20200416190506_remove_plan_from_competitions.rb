class RemovePlanFromCompetitions < ActiveRecord::Migration[6.0]
  def change
    remove_column :competitions, :plan, :string
  end
end
