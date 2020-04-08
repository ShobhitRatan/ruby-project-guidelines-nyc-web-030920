Competition.destroy_all 
 
competitions = GetRequester.new('http://api.football-data.org/v2/competitions/') 
competitions.get_response_body
 competitions.parse_json.each do |name| 
    Competition.create(name, name.data) 
end  
 
competitions.parse_json.each do |plan| 
    Competition.create(plan, plan.data) 
end 
 
c1 = competitions    

