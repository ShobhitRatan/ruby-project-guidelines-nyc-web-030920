class Match < ActiveRecord::Base
    has_many :current_seasons 
    has_many :competitions, through: :current_seasons 
    has_many :seasons, through: :current_seasons 
    has_many :teams, through: :current_seasons 
    has_many :match_days 
    def self.group_a_teams 
        Match.teams.where("group = Group A").all
    end 
    def self.group_b_teams 
        Match.teams.where("group = Group B").all 
    end 
    def self.group_c_teams 
        Match.teams.where("group = Group C").all 
    end 
    def self.group_d_teams 
        Match.teams.where("group = Group D").all  
    end 
    def self.group_e_teams 
        Match.teams.where("group = Group E").all  
    end 
    def self.group_f_teams 
        Match.teams.where("group = Group F").all  
    end 
    def self.group_g_teams 
        Match.teams.where("group = Group G").all 
    end 
    def self.group_h_teams 
        Match.teams.where("group = Group A").all  
    end 
    def self.round_of_16_teams 
        Match.teams.where("group = Round of 16").all  
    end 
    def self.quarter_finalists 
        Match.teams.where("group = Quarter-Finals").all 
    end 
    def self.semi_finalists 
        Match.teams.where("group = Semi-Finals").all 
    end 
    def self.third_place_playoffs 
        Match.teams.where("group = 3rd Place Playoff").all 
    end 
    def self.finalists 
        Match.teams.where("group = Final").all 
    end 
end 