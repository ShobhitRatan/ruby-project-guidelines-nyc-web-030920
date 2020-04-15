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
            Competition.where("plan = TIER_ONE").all 
        elsif choice == 2
            Competition.where("plan = TIER TWO").all
        elsif choice == 3 
            Competition.where("plan = TIER THREE").all 
        elsif choice == 4 
            Competition.where("plan = TIER FOUR").all 
        end 
        Competition.find_by(plan: choice) 
    end 
end  