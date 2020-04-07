class Team < ActiveRecord::Base 
    has_many :current_seasons 
    has_many :competitions, through: :current_seasons 
    has_many :matches, through: :current_seasons 
    has_many :seasons, through: :current_seasons 
    has_many :lineups 
    has_many :players, through: :lineups 
end 