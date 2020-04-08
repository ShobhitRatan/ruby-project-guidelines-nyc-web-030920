class MatchDay < ActiveRecord::Base 
    belongs_to :match 
    belongs_to :lineup 
end 