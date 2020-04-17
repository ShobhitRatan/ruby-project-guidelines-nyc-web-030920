require_relative '../config/environment'
require "tty-prompt" 
require_all 'db/migrate' 
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
                puts tier_one_competitions 
                elsif plan_choice == plan_menu[1] 
                    tier_two_competitions = CompetitionPlan.find_by(name: "TIER TWO").competitions.map do |t| 
                        t.name 
                    end   
                puts tier_two_competitions
                elsif plan_choice == plan_menu[2] 
                    tier_three_competitions = CompetitionPlan.find_by(name: "TIER THREE").competitions.map do |t| 
                        t.name 
                    end   
                puts tier_three_competitions
                elsif plan_choice == plan_menu[3] 
                    tier_four_competitions = CompetitionPlan.find_by(name: "TIER FOUR").competitions.map do |t| 
                        t.name 
                    end   
                puts tier_four_competitions
                end 
            end 
            user_plan_menu = ["Add a new competition", "Update an existing competition", "Remove an existing competition", "Exit"] 
            user_plan_choice = nil 
            while user_plan_choice != user_plan_menu[3] 
                user_plan_choice = prompt.select("Please select another option: ", user_plan_menu) 
                if user_plan_choice == user_plan_menu[0] 
                    name = prompt.ask("What would you like to name the competition? ") 
                    country = prompt.ask("Which country would you like the competition to be from? ") 
                    competition_prompt = prompt.ask("Which tier will the competition be in? ") 
                    competition_plan_id = CompetitionPlan.find_by(name: competition_prompt) 
                    new_competition = Competition.create(name: name, country: country, competition_plan_id: competition_plan_id)   
                elsif user_plan_choice == user_plan_menu[1] 
                    name_prompt = prompt.ask("Which competition would you like to update? ") 
                    old_name = name_prompt 
                    new_name = prompt.ask("What would you like to name it? ") 
                    competition_name = Competition.find_by(name: old_name) 
                    competition_name.update(name: new_name) 
                elsif user_plan_choice == user_plan_menu[2] 
                    name_remove = prompt.ask("Which competition would you like to remove? ")  
                    Competition.destroy_by(name: name_remove)   
                end 
                plan_choice = prompt.select("Please select another option: ", plan_menu)    
            end 
    elsif main_choice == main_menu[1] 
        competition_prompt = prompt.ask("Which tier will the competition be in? ")  
        competition_menu = CompetitionPlan.find_by(name: competition_prompt).competitions.map do |t| 
            t.name 
        end 
        competition_menu << "Exit"
        competition_choice = nil 
        while competition_choice != competition_menu[7]   
            competition_choice = prompt.select("Please select another option", competition_menu)  
            if competition_choice == competition_menu[0] 
                world_cup_seasons = Competition.find_by(name: "World Cup").seasons.map do |t| 
                    t.name 
                end 
            puts world_cup_seasons 
            elsif competition_choice == competition_menu[1] 
                premier_league_seasons = Competition.find_by(name: "Premier League").seasons.map do |t| 
                    t.name 
                end 
            puts premier_league_seasons 
            elsif competition_choice == competition_menu[2] 
                uefa_champions_league_seasons = Competition.find_by(name: "UEFA Champions League").seasons.map do |t| 
                    t.name 
                end 
            puts uefa_champions_league_seasons 
            elsif competition_choice == competition_menu[3] 
                serie_a_italy_seasons = Competition.find_by(name: "Serie A Italy").seasons.map do |t| 
                    t.name 
                end 
            puts serie_a_italy_seasons   
            elsif competition_choice == competition_menu[4] 
                la_liga_seasons = Competition.find_by(name: "La Liga").seasons.map do |t| 
                    t.name 
                end 
            puts la_liga_seasons 
            elsif competition_choice == competition_menu[5] 
                serie_a_brazil_seasons = Competition.find_by(name: "Serie A Brazil").seasons.map do |t| 
                    t.name 
                end 
            puts serie_a_brazil_seasons 
            elsif competition_choice == competition_menu[1] 
                bundesliga_seasons = Competition.find_by(name: "Bundesliga").seasons.map do |t| 
                    t.name 
                end 
            puts bundesliga_seasons    
            end 
        end 
    end 
end 
# cli = CommandLineInterface.new 
# cli.run  