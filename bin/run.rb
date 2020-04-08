require_relative '../config/environment'



puts "HELLO WORLD"
competitions = GetRequester.new('http://api.football-data.org/v2/competitions/') 
competitions.get_response_body
competitions.parse_json
