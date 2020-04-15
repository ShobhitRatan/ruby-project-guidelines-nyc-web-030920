class Competition < ActiveRecord::Base 
    has_many :current_seasons 
    has_many :seasons, through: :current_seasons 
    has_many :teams, through: :current_seasons 
    has_many :matches, through: :current_seasons 
    
    # Method to add a new competition. 
    def self.add_competition(name, plan, country)
        Competition.create(name: name, plan: plan, country: country) 
    end 
    def self.remove_competition(name) 
        Competition.find_by(name) 
        Competition.destroy(name)
    end 
    def self.update_competition(old_name, new_name) 
        competition_name = Competition.find_by(old_name) 
        competition_name.update(name: new_name) 
    end 
    def self.tier_one_competitions 
        Compeitition.where("plan = TIER_ONE").all 
    end 
    def self.tier_two_competitions 
        Competition.where("plan = TIER_TWO").all 
    end 
    def self.tier_three_competitions 
        Competition.where("plan = TIER_THREE").all 
    end 
    def self.tier_four_competitions 
        Competition.where("plan = TIER_FOUR").all 
    end  
    def self.world_cup_seasons
        Competition.seasons.where("name = World Cup").all 
    end 
    def self.premier_league_seasons 
        Competition.seasons.where("name = Premier League").all 
    end 
    def self.premier_league_seasons 
        Competition.seasons.where("name = Premier League").all 
    end 
    def self.uefa_champions_league_seasons 
        Competition.seasons.where("name = UEFA Champions League").all 
    end 
    def self.serie_a_italy_seasons 
        Competition.seasons.where("name = Serie A Italy").all 
    end 
    def self.la_liga_seasons 
        Competition.seasons.where("name = La Liga").all 
    end 
    def self.serie_a_brazil_seasons 
        Competition.seasons.where("name = Serie A Brazil").all 
    end 
    def self.bundesliga_seasons 
        Competition.seasons.where("name = Bundesliga").all 
    end 
end 