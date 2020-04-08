Competition.destroy_all 
 


competitions = GetRequester.new('http://api.football-data.org/v2/competitions/') 
competitions.get_response_body
c1 = Competition.new 
c1.name 
  

