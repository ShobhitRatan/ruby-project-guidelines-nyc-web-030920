require_all 'app' 
require 'date'  
class CommandLineInterface
    def greet 
        puts "Welcome to Soccer Data Exchange! The go to place for soccer fans from around the world." 
    end 
    def Player.add_player(name, position, goals, caps, date_of_birth, club) 
        Player.create(name: name, position: position, goals: goals, caps: caps, date_of_birth: date_of_birth, club: club) 
    end 
    def Player.highest_number_of_goals 
        Player.maximum(:goals) 
    end 
    def Player.most_goals 
        Player.where("goals = ?", self.highest_number_of_goals).first 
    end 
    def Player.highest_number_of_matches_played 
        Player.maximum(:caps) 
    end 
    def Player.most_matches 
        Player.where("caps = ?", self.highest_number_of_matches_played).first 
    end 
    def Player.maximum_age 
        age = Date.today.year - Player.date_of_birth.year 
        Player.maximum(:age) 
    end 
    def Player.oldest_player 
        Player.where("age = ?", self.maximum_age).first 
    end
    def Player.minimum_age 
        age = Date.today - Player.date_of_birth.year 
        Player.minimum(:age) 
    end 
    def Player.youngest_player 
        Player.where("age = ?", self.minimum_age).first 
    end  
    def score 
        Player.goals += 1 
    end 
    def play 
        Player.caps += 1 
    end 
    def Lineup.iran_squad 
        Lineup.players.where("name = Iran").all 
    end 
    def Lineup.morocco_squad 
        Lineup.players.where("name = Morocco").all 
    end 
    def Lineup.portugal_squad 
        Lineup.players.where("name = Portugal").all 
    end 
    def Lineup.spain_squad 
        Lineup.players.where("name = Spain").all 
    end  
    def Lineup.add_player_to_squad(player_id, team_id) 
        Lineup.create(player_id: player_id, team_id: team_id) 
    end 
    def Lineup.remove_player_from_squad(player_id, team_id)   
        Player.find_by(name: name)
        Lineup.destroy(name)   
    end 
    def Lineup.update_player(player_id)  
        player_id = Player.find_by(name: "Shobhit Ratan")
        player_id.update(caps: 30) 
        player_id.update(goals: 15)  
    end 
    def plan_options 
        puts "1- TIER ONE" 
        puts "2- TIER TWO" 
        puts "3- TIER THREE" 
        puts "4- TIER FOUR"  
    end 
    def competition_options 
        puts "1- World Cup" 
        puts "2- Premier League" 
        puts "3- UEFA Champions League" 
        puts "4- Serie A Italy" 
        puts "5- La Liga" 
        puts "6- Serie A Brazil" 
        puts "7- Bundesliga" 
    end 
    def season_options 
        puts "1- FIFA World Cup 2018" 
        puts "2- FIFA World Cup 2014" 
    end 
    def group_options 
        puts "1- Group A" 
        puts "2- Group B" 
        puts "3- Group C" 
        puts "4- Group D" 
        puts "5- Group E" 
        puts "6- Group F" 
        puts "7- Group G" 
        puts "8- Group H" 
        puts "9- Round of 16" 
        puts "10- Quarter-Finals" 
        puts "11- Semi-Finals" 
        puts "12- 3rd Place Playoff" 
        puts "13- Final" 
    end
    def team_options 
        puts "1- Iran" 
        puts "2- Morocco" 
        puts "3- Portugal" 
        puts "4- Spain" 
    end  
    def lineup_options 
        puts "1- Rui Patricio" 
        puts "2- Bruno Alves" 
        puts "3- Pepe" 
        puts "4- Manuel Fernandes" 
        puts "5- Raphael Guerreiro" 
        puts "6- Jose Fonte" 
        puts "7- Christiano Ronaldo" 
        puts "8- Joao Moutinho" 
        puts "9- Andre Silva" 
        puts "10- Joao Mario" 
        puts "11- Bernardo Silva" 
        puts "12- Anthony Lopes" 
        puts "13- Ruben Dias" 
        puts "14- William Carvalho" 
        puts "15- Ricardo Pereira" 
        puts "16- Bruno Fernandes" 
        puts "17- Goncalo Guedes" 
        puts "18- Gelson Martins" 
        puts "19- Mario Rui" 
        puts "20- Ricardo Quaresma" 
        puts "21- Cedric" 
        puts "22- Beto" 
        puts "23- Adrien Silva" 
    end 
    def updated_lineup 
        puts "1- Rui Patricio" 
        puts "2- Bruno Alves" 
        puts "3- Pepe" 
        puts "4- Manuel Fernandes" 
        puts "5- Raphael Guerreiro" 
        puts "6- Jose Fonte" 
        puts "7- Christiano Ronaldo" 
        puts "8- Joao Moutinho" 
        puts "9- Andre Silva" 
        puts "10- Joao Mario" 
        puts "11- Bernardo Silva" 
        puts "12- Anthony Lopes" 
        puts "13- Ruben Dias" 
        puts "14- William Carvalho" 
        puts "15- Ricardo Pereira" 
        puts "16- Bruno Fernandes" 
        puts "17- Goncalo Guedes" 
        puts "18- Gelson Martins" 
        puts "19- Mario Rui" 
        puts "20- Ricardo Quaresma" 
        puts "21- Cedric" 
        puts "22- Beto"  
        puts "23- Shobhit Ratan"
    end 
    def player_options 
        puts "1- Add Player" 
        puts "2- Update Player" 
        puts "3- Remove Player" 
    end 
    def run 
        greet 
        puts "Let's pick a competition from one of the four options: " 
        plan_options 
        plan_choice = gets.strip  
        if plan_choice == 1
            Competition.tier_one_competitions
        elsif plan_choice == 2
            Competition.tier_two_competitions
        elsif plan_choice == 3 
            Competition.tier_three_competitions 
        elsif plan_choice == 4 
            Competition.tier_four_competitions 1
        end  
        puts "Please select the competition you would like to see the teams, players and matches for: " 
        competition_options 
        competition_choice = gets.strip  
        if competition_choice == 1 
            Competition.world_cup_seasons 
        elsif competition_choice == 2 
            Competition.premier_league_seasons 
        elsif competition_choice == 3 
            Competition.uefa_champions_league_seasons 
        elsif competition_choice == 4 
            Competition.serie_a_italy_seasons 
        elsif competition_choice == 5 
            Competition.la_liga_seasons 
        elsif competition_choice == 6 
            Competition.serie_a_brazil_seasons 
        elsif competition_choice == 7 
            Competition.bundesliga_seasons 
        end 
        puts "Please select the season you would like to see: " 
        season_options 
        season_choice = gets.strip  
        if season_choice == 1 
            CurrentSeason.fifa_world_cup_2018 
        elsif season_choice == 2 
            CurrentSeason.fifa_world_cup_2018 
        end 
        puts "Please select the group you would like to see: " 
        group_options 
        group_choice = gets.strip   
        if group_choice == 1 
            Match.group_a_teams 
        elsif group_choice == 2 
            Match.group_b_teams 
        elsif group_choice == 3
            Match.group_c_teams 
        elsif group_choice == 4 
            Match.group_d_teams 
        elsif group_choice == 5 
            Match.group_e_teams 
        elsif group_choice == 6 
            Match.group_f_teams 
        elsif group_choice == 7 
            Match.group_g_teams 
        elsif group_choice == 8 
            Match.group_h_teams 
        elsif group_choice == 9 
            Match.round_of_16_teams 
        elsif group_choice == 10 
            Match.quarter_finalists 
        elsif group_choice == 11 
            Match.semi_finalists 
        elsif group_choice == 12 
            Match.third_place_playoffs 
        elsif group_choice == 13 
            Match.finalists 
        end 
        puts "Please select the teams you would like to see: " 
        team_options 
        team_choice = gets.strip 
        if team_choice == 1 
            Lineup.iran_squad 
        elsif team_choice == 2 
            Lineup.morocco_squad 
        elsif team_choice == 3 
            Lineup.portugal_squad 
        elsif team_choice == 4 
            Lineup.spain_squad  
        end 

        
        puts "Please see the lineup for the team below:  " 
        lineup_options 
        player_options 
        player_choice = gets.strip 
        player_choice = Player.find_by(name: name)
        Player.add_player("Shobhit Ratan", "MF", 10, 20, Date.new(1995,9,22), "Real Madrid") 
        Lineup.add_player_to_squad(185,27)  
        Lineup.update_player(185)  
        Lineup.remove_player_from_squad(161,27)       
        Player.most_goals  
        Player.most_matches   
        updated_lineup 
    end 
end 