class CurrentSeason < ActiveRecord::Base 
    belongs_to :competition 
    belongs_to :season 
    belongs_to :match 
    belongs_to :team 

    def self.fifa_world_cup_2018 
        CurrentSeason.teams.where("name = FIFA World Cup 2018").all 
    end 
    def self.fifa_world_cup_2018 
        CurrentSeason.teams.where("name = FIFA World Cup 2014").all  
    end 
end 