require_relative '../config/environment'
require "tty-prompt" 
prompt = TTY::Prompt.new 
def greet 
    puts "Welcome to Soccer Data Exchange! The go to place for soccer fans from around the world."    
end 
greet 
prompt.ask("What is your name?", default: ENV['USER']) 
main_menu = ["Competition Plan", "Competition", "Season", "Group", "Team", "Lineup", "Player", "Log Out"]  
    main_choice = nil 
    while main_choice != main_menu[7] 
        main_choice = prompt.select("This is the main menu.", main_menu) 
        if main_choice == main_menu[0] 
            plan_menu = ["TIER ONE", "TIER TWO", "TIER THREE", "Exit"] 
            plan_choice = nil 
            while plan_choice != plan_menu[3] 
                plan_choice = prompt.select("Please select another option: ", plan_menu) 
                if plan_choice == plan_menu[0] 
                    
                end   
            end 
        end 
    end 
# cli = CommandLineInterface.new 
# cli.run  