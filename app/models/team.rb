class Team < ActiveRecord::Base 
    has_many :current_seasons 
    has_many :competitions, through: :current_seasons 
    has_many :matches, through: :current_seasons 
    has_many :seasons, through: :current_seasons 
    has_many :lineups 
    has_many :players, through: :lineups 

    def self.add_team(name, short_name, last_updated, venue) 
        Team.create(name: name, short_name: short_name, last_updated: last_updated, venue: venue) 
    end 
    
end 