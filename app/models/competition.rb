class Competition < ActiveRecord::Base 
    has_many :current_seasons 
    has_many :seasons, through: :current_seasons 
    has_many :teams, through: :current_seasons 
    has_many :matches, through: :current_seasons 

    def self.name 
        competitions.parse_json.each do |name| 
            Competition.create(name, name.data) 
        end  
    end 
    def self.plan 
        competitions.parse_json.each do |plan| 
            Competition.create(plan, plan.data) 
        end 
    end 
end 