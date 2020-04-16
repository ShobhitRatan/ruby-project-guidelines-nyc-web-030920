class CreateCompetitionPlans < ActiveRecord::Migration[6.0]
  def change
    create_table :competition_plans do |t| 
      t.string :name 
    end 
  end
end
