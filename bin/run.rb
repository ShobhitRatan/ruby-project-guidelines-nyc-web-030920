require_relative '../config/environment'


cli = CommandLineInterface.new 
cli.run 

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