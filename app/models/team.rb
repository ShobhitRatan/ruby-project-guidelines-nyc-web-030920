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
    def teams 
        self.all 
    end 
    def self.remove_team(name) 
        Competition.find_by(name: name) 
        Competition.destroy(name) 
    end 
    def self.update_team(old_name, new_name) 
        team_name = Competition.find_by(old_name) 
        team_name.update(name: new_name) 
    end 
    
end 