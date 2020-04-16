require 'date'
class Lineup < ActiveRecord::Base 
    has_many :match_days 
    belongs_to :player 
    belongs_to :team 
    
    def Lineup.iran_squad 
        self.players.where("name = Iran").all 
    end 
    def Lineup.morocco_squad 
        self.players.where("name = Morocco").all 
    end 
    def Lineup.portugal_squad 
        self.players.where("name = Portugal").all 
    end 
    def Lineup.spain_squad 
        self.players.where("name = Spain").all 
    end  
    def Lineup.add_player_to_squad(player_id, team_id) 
        Lineup.create(player_id: player_id, team_id: team_id) 
    end 
    def Lineup.remove_player_from_squad(name)  
        Player.find_by(name: name)
        Lineup.destroy(name)  
    end 
    def Lineup.update_player(player_id)  
        Player.goals += 1
        Player.caps += 1  
    end 
end 