require 'date'
class Player < ActiveRecord::Base 
    has_many :lineups 
    has_many :teams, through: :lineups 
    def self.highest_number_of_goals 
        self.maximum(:goals) 
    end 
    def self.most_goals 
        self.where("goals = ?", self.highest_number_of_goals).first 
    end 
    def self.highest_number_of_matches_played 
        self.maximum(:caps) 
    end 
    def self.most_matches 
        self.where("player = ?", self.highest_number_of_matches_played).first 
    end 
    def self.maximum_age 
        age = Date.today.year - date_of_birth.year 
        self.maximum(:age) 
    end 
    def self.oldest_player 
        self.where("age = ?", self.maximum_age).first 
    end 
end 