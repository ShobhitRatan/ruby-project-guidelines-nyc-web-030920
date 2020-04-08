class CreateCompetitions < ActiveRecord::Migration[5.0]
  def change
    create_table :competitions do |t| 
      t.string :name 
      t.string :plan 
    end 
  end
end
