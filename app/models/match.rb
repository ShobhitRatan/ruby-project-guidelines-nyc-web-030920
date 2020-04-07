class Match < ActiveRecord 
    has_many :current_seasons 
    has_many :competitions, through: :current_seasons 
    has_many :seasons, through: :current_seasons 
    has_many :teams, through: :current_seasons 
    has_many :match_days 
end 