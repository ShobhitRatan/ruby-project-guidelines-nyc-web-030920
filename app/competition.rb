class Competition < ActiveRecord::Base 
    has_many :current_seasons 
    has_many :seasons, through: :current_seasons 
    has_many :teams, through: :current_seasons 
    has_many :matches, through: :current_seasons 
end 