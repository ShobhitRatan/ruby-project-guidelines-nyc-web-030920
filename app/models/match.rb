class Match < ActiveRecord::Base
    has_many :current_seasons 
    has_many :competitions, through: :current_seasons 
    has_many :teams, through: :current_seasons 
    has_many :match_days 
    belongs_to :season 
end 