class CreateUserTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :user_teams do |t| 
      t.string :user_id 
      t.string :team_id 
    end 
  end
end
