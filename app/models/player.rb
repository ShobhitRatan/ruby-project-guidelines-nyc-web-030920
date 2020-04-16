require 'date'
class Player < ActiveRecord::Base 
    has_many :lineups 
    has_many :teams, through: :lineups 
    def Player.add_player(name, position, goals, caps, date_of_birth, club) 
        Player.create(name: name, position: position, goals: goals, caps: caps, date_of_birth: date_of_birth, club: club) 
    end 
    def Player.highest_number_of_goals 
        self.maximum(:goals) 
    end 
    def Player.most_goals 
        self.where("goals = ?", self.highest_number_of_goals).first 
    end 
    def Player.highest_number_of_matches_played 
        self.maximum(:caps) 
    end 
    def Player.most_matches 
        self.where("player = ?", self.highest_number_of_matches_played).first 
    end 
    def Player.maximum_age 
        age = Date.today.year - date_of_birth.year 
        self.maximum(:age) 
    end 
    def Player.oldest_player 
        self.where("age = ?", self.maximum_age).first 
    end
    def Player.minimum_age 
        age = Date.today - date_of_birth.year 
        self.minimum(:age) 
    end 
    def Player.youngest_player 
        self.where("age = ?", self.minimum_age).first 
    end  
    def score 
        self.goals += 1 
    end 
    def play 
        self.caps += 1 
    end 
end 