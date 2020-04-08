require_all 'app'
Competition.destroy_all 

c1 = Competition.create(name: "Premier League", plan: "TIER ONE") 