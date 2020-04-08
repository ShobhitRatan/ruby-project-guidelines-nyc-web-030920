
Competition.destroy_all 

competitions = GetRequester.new('http://api.football-data.org/v2/competitions/')
competitions.get_response_body 
competitions.parse_json.each do |competition| 
    Competition.create(name: competition.name, plan: competition.plan)  
end 
