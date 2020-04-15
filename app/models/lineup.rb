require 'date'
class Lineup < ActiveRecord::Base 
    has_many :match_days 
    belongs_to :player 
    belongs_to :team 
    def self.maximum_age 
        age = Date.today.year - date_of_birth.year 
        self.maximum(:age) 
    end 
    def self.oldest_player 
        self.where("age = ?", self.maximum_age).first 
    end 
end 