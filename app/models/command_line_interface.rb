class CommandLineInterface 
    def greet 
        puts "Welcome to Soccer Data Exchange! The go to place for soccer fans from around the world." 
    end 
    def options 
        puts "1- TIER ONE" 
        puts "2- TIER TWO" 
        puts "3- TIER THREE" 
        puts "4- TIER FOUR" 
    end 
    def run 
        greet 
        puts "Let's pick a competition from one of the four options: "  
        choice = gets.chomp(options) 
        Competition.find_by(plan: choice) 
    end 

end  