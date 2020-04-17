class Season < ActiveRecord::Base 
    has_many :current_seasons 
    has_many :competitions, through: :current_seasons  
    has_many :teams, through: :current_seasons 
    has_many :matches, through: :current_seasons 
end 