class User < ActiveRecord::Base 
    has_many :current_seasons 
    has_many :lineups 
end 
