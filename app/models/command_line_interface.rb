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
    def run 
        greet 
        puts "Let's pick a competition from one of the four options: " 
        plan_options 
        choice = gets.chomp()  
        if choice == 1
            Competition.tier_one_competitions
        elsif choice == 2
            Competition.tier_two_competitions
        elsif choice == 3 
            Competition.tier_three_competitions 
        elsif choice == 4 
            Competition.tier_four_competitions 
        end  
        puts "Please select the competition you would like to see the teams, players and matches for: " 
        competition_name = gets.chomp() 
        puts "Please select the season you would like to see: " 
        season_name = gets.chomp() 
    end 
end  