class CreateSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :seasons do |t| 
      t.datetime :start_date 
      t.datetime :end_date 
    end 
  end
end
