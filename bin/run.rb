require_relative '../config/environment'
require "tty-prompt" 
require_all 'db/migrate' 
require 'date' 
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
                world_cup_seasons = Competition.find_by(name: "World Cup").seasons.map.uniq do |t| 
                    t.name 
                end 
                puts world_cup_seasons 
            elsif competition_choice == competition_menu[1] 
                premier_league_seasons = Competition.find_by(name: "Premier League").seasons.map.uniq do |t| 
                    t.name 
                end 
            puts premier_league_seasons 
            elsif competition_choice == competition_menu[2] 
                uefa_champions_league_seasons = Competition.find_by(name: "UEFA Champions League").seasons.map.uniq do |t| 
                    t.name 
                end 
            puts uefa_champions_league_seasons 
            elsif competition_choice == competition_menu[3] 
                serie_a_italy_seasons = Competition.find_by(name: "Serie A Italy").seasons.map.uniq do |t| 
                    t.name 
                end 
            puts serie_a_italy_seasons   
            elsif competition_choice == competition_menu[4] 
                la_liga_seasons = Competition.find_by(name: "La Liga").seasons.map.uniq do |t| 
                    t.name 
                end 
            puts la_liga_seasons 
            elsif competition_choice == competition_menu[5] 
                serie_a_brazil_seasons = Competition.find_by(name: "Serie A Brazil").seasons.map do |t| 
                    t.name 
                end.uniq 
            puts serie_a_brazil_seasons 
            elsif competition_choice == competition_menu[6] 
                bundesliga_seasons = Competition.find_by(name: "Bundesliga").seasons.map do |t| 
                    t.name 
                end.uniq 
            puts bundesliga_seasons   
            end 
            user_season_menu = ["Add a new season", "Update an existing season", "Exit"] 
            user_season_choice = nil  
            while user_season_choice != user_season_menu[2]
                user_season_choice = prompt.select("Please select another option: ", user_season_menu)  
                if user_season_choice == user_season_menu[0] 
                    start_date = prompt.ask("What is the starting date for the season? ") 
                    end_date = prompt.ask("What is the ending date for the season? ") 
                    name = prompt.ask("What is the season's name? ") 
                    new_season = Season.create(start_date: start_date, end_date: end_date, name: name) 
                elsif user_season_choice == user_season_menu[1] 
                    name_prompt = prompt.ask("Which season would you like to update? ") 
                    old_name = name_prompt 
                    new_name = prompt.ask("What would you like to name it? ") 
                    season_name = Season.find_by(name: old_name) 
                    season_name.update(name: new_name) 
                end 
            end 
        end 
    elsif main_choice == main_menu[2] 
        season_prompt = prompt.ask("Please enter the competition you are interested in?  ")   
        season_menu = ["FIFA World Cup 2018", "FIFA World Cup 2014"].map do |string| 
            string 
        end 
        season_menu << "Exit"
        season_choice = nil 
        while season_choice != season_menu[2]  
            season_choice = prompt.select("Please select another option", season_menu)  
            if season_choice == season_menu[0] 
                fifa_world_cup_2018 = Season.find_by(name: "FIFA World Cup 2018").matches.map do |t| 
                    t.group 
                end.uniq  
            elsif season_choice == season_menu[1] 
                fifa_world_cup_2014 = Season.find_by(name: "FIFA World Cup 2014").matches.map do |t| 
                    t.group 
                end.uniq   
            end 
        end 
    elsif main_choice == main_menu[3] 
        group_prompt = prompt.ask("Please enter the season you are interested in? ") 
        group_menu = ["Group A", "Group B", "Group C", "Group D", "Group E", "Group F", "Group G", "Group H", "Round of 16", "Quarter-Finals", "Semi-Finals", "3rd Place Playoff", "Final"].map do |string| 
            string 
        end 
        group_menu << "Exit" 
        group_choice = nil 
        while group_choice != group_menu[13]  
            group_choice = prompt.select("Please select another option", group_menu) 
            if group_choice == group_menu[0] 
                group_a_teams = Match.find_by(group: "Group A").teams.map do |t| 
                    t.name 
                end 
                puts group_a_teams  
            elsif group_choice == group_menu[1] 
                group_b_teams = Match.find_by(group: "Group B").teams.map do |t| 
                    t.name 
                end 
                puts group_b_teams
            elsif group_choice == group_menu[2] 
                group_c_teams = Match.find_by(group: "Group C").teams.map do |t| 
                    t.name 
                end 
                puts group_c_teams
            elsif group_choice == group_menu[3] 
                group_d_teams = Match.find_by(group: "Group D").teams.map do |t| 
                    t.name 
                end 
                puts group_d_teams 
            elsif group_choice == group_menu[4] 
                group_e_teams = Match.find_by(group: "Group E").teams.map do |t| 
                    t.name 
                end 
                puts group_e_teams 
            elsif group_choice == group_menu[5] 
                group_f_teams = Match.find_by(group: "Group F").teams.map do |t| 
                    t.name 
                end 
                puts group_f_teams
            elsif  group_choice == group_menu[6] 
                group_g_teams = Match.find_by(group: "Group G").teams.map do |t| 
                    t.name 
                end 
                puts group_g_teams 
            elsif group_choice == group_menu[7] 
                group_h_teams = Match.find_by(group: "Group H").teams.map do |t| 
                    t.name 
                end 
                puts group_h_teams 
            elsif group_choice == group_menu[8] 
                round_of_16_teams = Match.find_by(group: "Round of 16").teams.map do |t| 
                    t.name 
                end 
                puts round_of_16_teams 
            elsif group_choice == group_menu[9] 
                quarter_finals_teams = Match.find_by(group: "Quarter-Finals").teams.map do |t| 
                    t.name 
                end 
                puts quarter_finals_teams
            elsif group_choice == group_menu[10] 
                semi_finals_teams = Match.find_by(group: "Semi-Finals").teams.map do |t| 
                    t.name 
                end 
                puts semi_finals_teams 
            elsif group_choice == group_menu[11] 
                third_place_playoff_teams = Match.find_by(group: "3rd Place Playoff").teams.map do |t| 
                    t.name 
                end 
                puts third_place_playoff_teams 
            elsif group_choice == group_menu[12] 
                finals_teams = Match.find_by(group: "Final").teams.map do |t| 
                    t.name 
                end 
                puts finals_teams 
            end 
            user_team_menu = ["Add a new team", "Update an existing team", "Remove an existing team", "Exit"] 
            user_team_choice = nil 
            while user_team_choice != "Exit" 
                user_team_choice = prompt.select("Please select another option: ", user_team_menu) 
                if user_team_choice == user_team_menu[0] 
                    name = prompt.ask("What would you like to name your team? ") 
                    short_name = prompt.ask("What will be the short name for the team? ") 
                    last_updated = Date.today
                    venue = prompt.ask("What will be the main venue for the team? ") 
                    new_team = Team.create(name: name, short_name: short_name, last_updated: last_updated, venue: venue) 
                elsif user_team_choice == user_team_menu[1] 
                    name_prompt = prompt.ask("Which team would you like to update? ") 
                    old_name = name_prompt 
                    new_name = prompt.ask("What would you like to name it? ") 
                    team_name = Team.find_by(name: old_name) 
                    team_name.update(name: new_name)  
                elsif  user_team_choice == user_team_menu[2] 
                    name_remove = prompt.ask("Which team would you like to remove? ")  
                    Team.destroy_by(name: name_remove) 
                end  
            end  
        end
    elsif main_choice == main_menu[4] 
        team_prompt = "Please enter a group to see the teams: " 
        team_menu = Match.find_by(group: team_prompt).teams.map do |t| 
            t.name 
        end 
        team_menu << "Exit"
        team_choice = nil 
        while team_choice != team_menu[4] 
            team_choice = prompt.select("Please select another option", team_menu) 
            if team_choice == team_menu[0] 
                team_1_lineup = Team.find_by(name: Iran).players.map do |t| 
                    t.name 
                end 
            end 
        end 
    end 
end 
# cli = CommandLineInterface.new 
# cli.run  