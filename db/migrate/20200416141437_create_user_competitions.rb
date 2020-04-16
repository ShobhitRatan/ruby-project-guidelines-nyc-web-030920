class CreateUserCompetitions < ActiveRecord::Migration[6.0]
  def change 
    create_table :user_competitions do |t| 
      t.string :user_id 
      t.string :competition_id 
    end 
  end
end
