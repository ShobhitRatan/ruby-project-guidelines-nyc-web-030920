class AddCompetitionPlanIdFromCompetitions < ActiveRecord::Migration[6.0]
  def change 
    add_column :competitions, :competition_plan_id, :integer 
  end
end
