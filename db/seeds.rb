Competition.destroy_all 
CurrentSeason.destroy_all 
Lineup.destroy_all 
Match_day.destroy_all 
Match.destroy_all 
Player.destroy_all 
Season.destroy_all 
Team.destroy_all 


competitions = GetRequester.new('http://api.football-data.org/v2/competitions/') 
competitions.get_response_body
competitions.parse_json.each do |name| 
    Competition.create(name, name.data) 
end  
teams = GetRequester.new('http://api.football-data.org/v2/competitions/2000/teams')
teams.get_response_body 
teams.parse_json 

  

