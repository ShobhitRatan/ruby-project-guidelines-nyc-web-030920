class Competition < ActiveRecord::Base 
    has_many :current_seasons 
    has_many :seasons, through: :current_seasons 
    has_many :teams, through: :current_seasons 
    has_many :matches, through: :current_seasons 
    belongs_to :competition_plan 
    # Method to add a new competition. 
    def self.add_competition(name, country, plan_id)
        Competition.create(name: name, country: country, competition_plan_id: competition_plan_id)  
    end 
    def self.remove_competition(name) 
        Competition.find_by(name) 
        Competition.destroy(name)
    end 
    def self.update_competition(old_name, new_name) 
        competition_name = Competition.find_by(old_name) 
        competition_name.update(name: new_name) 
    end 
end 