class CurrentSeason < ActiveRecord::Base 
    belongs_to :competition 
    belongs_to :season 
    belongs_to :match 
    belongs_to :team 
end 