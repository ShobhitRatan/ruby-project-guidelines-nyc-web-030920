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
    def self.minimum_age 
        age = Date.today - date_of_birth.year 
        self.minimum(:age) 
    end 
    def self.youngest_player 
        self.where("age = ?", self.minimum_age).first 
    end 
    def self.iran_squad 
        self.players.where("name = Iran").all 
    end 
    def self.morocco_squad 
        self.players.where("name = Morocco").all 
    end 
    def self.portugal_squad 
        self.players.where("name = Portugal").all 
    end 
    def self.spain_squad 
        self.players.where("name = Spain").all 
    end  
end 