class Competition < ActiveRecord::Base 
    has_many :current_seasons 
    has_many :seasons, through: :current_seasons 
    has_many :teams, through: :current_seasons 
    has_many :matches, through: :current_seasons 
    
    # Method to add a new competition. 
    def self.add_competition(name, plan, country)
        Competition.create(name: name, plan: plan, country: country) 
    end 
end 