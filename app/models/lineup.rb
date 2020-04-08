class Lineup < ActiveRecord::Base 
    has_many :match_days 
    belongs_to :player 
    belongs_to :team 
end 