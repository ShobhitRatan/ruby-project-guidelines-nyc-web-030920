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
    end 
end  