require_all 'app' 
require_all 'db' 
class CommandLineInterface 
    def greet 
        puts "Welcome to Soccer Data Exchange! The go to place for soccer fans from around the world." 
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
    def run 
        greet 
        puts "Let's pick a competition from one of the four options: " 
        plan_options 
        plan_choice = gets.chomp()  
        if plan_choice == 1
            Competition.tier_one_competitions
        elsif plan_choice == 2
            Competition.tier_two_competitions
        elsif plan_choice == 3 
            Competition.tier_three_competitions 
        elsif plan_choice == 4 
            Competition.tier_four_competitions 
        end  
        puts "Please select the competition you would like to see the teams, players and matches for: " 
        competition_options 
        competition_choice = gets.chomp() 
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
        season_choice = gets.chomp() 
        if season_choice == 1 
            CurrentSeason.fifa_world_cup_2018 
        elsif season_choice == 2 
            CurrentSeason.fifa_world_cup_2018 
        end 
        puts "Please select the group you would like to see: " 
        group_options 
        group_choice = gets.chomp()   
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
        team_choice = gets.chomp() 
        if team_choice == 1 
            Lineup.iran_squad 
        elsif team_choice == 2 
            Lineup.morocco_squad 
        elsif team_choice == 3 
            Lineup.portugal_squad 
        elsif team_choice == 4 
            Lineup.spain_squad 
        end 
    end 
end  