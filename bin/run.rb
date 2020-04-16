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
            plan_menu = ["TIER ONE", "TIER TWO", "TIER THREE", "TIER FOUR", "Exit"]  
            plan_choice = nil 
            while plan_choice != plan_menu[4] 
                plan_choice = prompt.select("Please select another option: ", plan_menu) 
                if plan_choice == plan_menu[0] 
                    tier_one_competitions = CompetitionPlan.find_by(name: "TIER ONE").competitions.map do |t| 
                        t.name 
                    end   
                    puts "#{tier_one_competitions}" 
                elsif plan_choice == plan_menu[1] 
                    tier_two_competitions = CompetitionPlan.find_by(name: "TIER TWO").competitions.map do |t| 
                        t.name 
                    end   
                    puts "#{tier_two_competitions}"  
                elsif plan_choice == plan_menu[2] 
                    tier_three_competitions = CompetitionPlan.find_by(name: "TIER THREE").competitions.map do |t| 
                        t.name 
                    end   
                    puts "#{tier_three_competitions}"
                elsif plan_choice == plan_menu[3] 
                    tier_four_competitions = CompetitionPlan.find_by(name: "TIER TWO").competitions.map do |t| 
                        t.name 
                    end   
                    puts "#{tier_four_competitions}"
                end 
            end 
        end 
    end 
# cli = CommandLineInterface.new 
# cli.run  