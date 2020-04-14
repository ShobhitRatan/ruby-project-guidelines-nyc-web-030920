require 'date'
Competition.destroy_all 
Team.destroy_all 
Season.destroy_all 
Match.destroy_all 
CurrentSeason.destroy_all 
# Competition seed data 
c1 = Competition.create(name: "World Cup", plan: "TIER ONE", country: "World") 
c2 = Competition.create(name: "Premier League", plan: "TIER ONE", country: "England")
c3 = Competition.create(name: "UEFA Champions League", plan: "TIER ONE", country: "Europe") 
c4 = Competition.create(name: "Serie A", plan: "TIER ONE", country: "Italy")
c5 = Competition.create(name: "La Liga", plan: "TIER ONE", country: "Spain")
c6 = Competition.create(name: "Serie A", plan: "TIER ONE", country: "Brazil") 
c7 = Competition.create(name: "Bundesliga", plan: "TIER ONE", country: "Germany")  
c8 = Competition.create(name: "Superliga Argentina", plan: "TIER TWO", country: "Germany")
c9 = Competition.create(name: "A League", plan: "TIER TWO", country: "Australia") 
c10 = Competition.create(name: "Jupiler Pro League", plan: "TIER TWO", country: "Belgium") 
c11 = Competition.create(name: "Major League Soccer", plan: "TIER TWO", country: "USA") 
c12 = Competition.create(name: "FA Cup", plan: "TIER TWO", country: "England") 
c13 = Competition.create(name: "J. League", plan: "TIER TWO", country: "Japan") 
c14 = Competition.create(name: "UEFA Europa League", plan: "TIER TWO", country: "Europe")        
c15 = Competition.create(name: "Bundesliga", plan: "TIER THREE", country: "Austria") 
c16 = Competition.create(name: "Primera Division", plan: "TIER THREE", country: "Chile") 
c17 = Competition.create(name: "Primera Division", plan: "TIER THREE", country: "Peru") 
c18 = Competition.create(name: "Superliga", plan: "TIER THREE", country: "Denmark") 
c19 = Competition.create(name: "Liga MX", plan: "TIER THREE", country: "Mexico") 
c20 = Competition.create(name: "Coppa Italia", plan: "TIER THREE", country: "Italy") 
c21 = Competition.create(name: "Serie B", plan: "TIER THREE", country: "Brazil") 
c22 = Competition.create(name: "Serie C", plan: "TIER FOUR", country: "Brazil") 
c23 = Competition.create(name: "Supercopa Argentina", plan: "TIER FOUR", country: "Argentina") 
c24 = Competition.create(name: "Canadian Championship", plan: "TIER FOUR", country: "Canada") 
c25 = Competition.create(name: "I- League", plan: "TIER FOUR", country: "India") 
c26 = Competition.create(name: "Serie C", plan: "TIER FOUR", country: "Italy")
c27 = Competition.create(name: "National League", plan: "TIER FOUR", country: "England") 
c28 = Competition.create(name: "ABSA Premiership", plan: "TIER FOUR", country: "South Africa")       
# Team seed data 
t1 = Team.create(name: "Argentina", short_name: "ARG", last_updated: DateTime.now, venue: "Estadio Alberto José Armando") 
t2 = Team.create(name: "Uruguay", short_name: "URY", last_updated: DateTime.now, venue: "Guangxi Sports Centre Stadium") 
t3 = Team.create(name: "Brazil", short_name: "BRA", last_updated: DateTime.now, venue: "Anfield") 
t4 = Team.create(name: "Japan", short_name: "JPN", last_updated: DateTime.now, venue: "Stade Maurice Dufrasne") 
t5 = Team.create(name: "Mexico", short_name: "MEX", last_updated: DateTime.now, venue: "Levi's Stadium") 
t6 = Team.create(name: "Korea Republic", short_name: "KOR", last_updated: DateTime.now, venue: "Jeonju World Cup Stadium") 
t7 = Team.create(name: "Nigeria", short_name: "NIG", last_updated: DateTime.now, venue: "Rudolf-Tonn-Stadion") 
t8 = Team.create(name: "Australia", short_name: "AUS", last_updated: DateTime.now, venue: "NV Arena") 
t9 = Team.create(name: "Serbia", short_name: "SER", last_updated: DateTime.now, venue: "Merkur Arena")   
t10 = Team.create(name: "Costa Rica", short_name: "CRI", last_updated: DateTime.now, venue: "Estadio Nacional de Costa Rica")
t11 = Team.create(name: "Poland", short_name: "POL", last_updated: DateTime.now, venue: "Stadion Śląski")
t12 = Team.create(name: "Croatia", short_name: "HRV", last_updated: DateTime.now, venue: "Stadion Maksimir") 
t13 = Team.create(name: "Saudi Arabia", short_name: "KSA", last_updated: DateTime.now, venue: "Kybunpark")
t14 = Team.create(name: "Tunisia", short_name: "TUN", last_updated: DateTime.now, venue: "Stade Olympique de Radès") 
t15 = Team.create(name: "Senegal", short_name: "SEN", last_updated: DateTime.now, venue: "Stade Océane")
t16 = Team.create(name: "Morocco", short_name: "MAR", last_updated: DateTime.now, venue: "Stade de Genève")
t17 = Team.create(name: "Columbia", short_name: "COL", last_updated: DateTime.now, venue: "Craven Cottage")
t18 = Team.create(name: "Egypt", short_name: "EGY", last_updated: DateTime.now, venue: "Stadio Atleti Azzurri d'Italia")
t19 = Team.create(name: "Peru", short_name: "PER", last_updated: DateTime.now, venue: "Estadio Nacional") 
t20 = Team.create(name: "Iran", short_name: "IRN", last_updated: DateTime.now, venue: "Azadi Stadium")
t21 = Team.create(name: "Panama", short_name: "PAN", last_updated: DateTime.now, venue: "Estadio Rommel Fernández Gutiérrez")
t22 = Team.create(name: "Belgium", short_name: "BEL", last_updated: DateTime.now, venue: "Stade Roi Baudouin")
t23 = Team.create(name: "Denmark", short_name: "DEN", last_updated: DateTime.now, venue: "Aalborg Portland Park")
t24 = Team.create(name: "England", short_name: "ENG", last_updated: DateTime.now, venue: "Wembley Stadium")
t25 = Team.create(name: "France", short_name: "FRA", last_updated: DateTime.now, venue: "Stade de France")
t26 = Team.create(name: "Germany", short_name: "GER", last_updated: DateTime.now, venue: "Olympiastadion Berlin")
t27 = Team.create(name: "Portugal", short_name: "PRT", last_updated: DateTime.now, venue: "Estádio AXA") 
t28 = Team.create(name: "Russia", short_name: "RUS", last_updated: DateTime.now, venue: "VEB Arena")
t29 = Team.create(name: "Spain", short_name: "ESP", last_updated: DateTime.now, venue: "Estadio de la Cerámica")
t30 = Team.create(name: "Sweden", short_name: "SWE", last_updated: DateTime.now, venue: "Friends Arena")
t31 = Team.create(name: "Switzerland", short_name: "CHE", last_updated: DateTime.now, venue: "swissporarena") 
t32 = Team.create(name: "Iceland", short_name: "ISL", last_updated: DateTime.now, venue: "Laugardalsvöllur") 
t33 = Team.create(name: "Arsenal", short_name: "AFC", last_updated: DateTime.now, venue: "Emirates Stadium")
t34 = Team.create(name: "Aston Villa", short_name: "AVFC", last_updated: DateTime.now, venue: "Villa Park") 
t35 = Team.create(name: "Athletic Football Club Bournemouth", short_name: "AFC Bournemouth", last_updated: DateTime.now, venue: "Dean Court") 
t36 = Team.create(name: "Brighton & Hove Albion", short_name: "Albion", last_updated: DateTime.now, venue: "Falmer Stadium")
t37 = Team.create(name: "Burnley", short_name: "The Clarets", last_updated: DateTime.now, venue: "Turf Moor")
t38 = Team.create(name: "Chelsea", short_name: "CFC", last_updated: DateTime.now, venue: "Stamford Bridge")
t39 = Team.create(name: "Crystal Palace", short_name: "CPFC", last_updated: DateTime.now, venue: "Selhurst Park")
t40 = Team.create(name: "Everton", short_name: "The Blues", last_updated: DateTime.now, venue: "Goodison Park")
t41 = Team.create(name: "Leicester City", short_name: "The Foxes", last_updated: DateTime.now, venue: "King Power Stadium")
t42 = Team.create(name: "Liverpool", short_name: "LFC", last_updated: DateTime.now, venue: "Anfield")
t43 = Team.create(name: "Manchester City", short_name: "Man City, MCFC", last_updated: DateTime.now, venue: "City of Manchester Stadium")
t44 = Team.create(name: "Manchester United", short_name: "MUFC", last_updated: DateTime.now, venue: "Old Trafford")
t45 = Team.create(name: "Newcastle United", short_name: "The Magpies", last_updated: DateTime.now, venue: "St. James' Park")
t46 = Team.create(name: "Norwich City", short_name: "Yellows", last_updated: DateTime.now, venue: "Carrow Road")
t47 = Team.create(name: "Sheffield United", short_name: "SUFC", last_updated: DateTime.now, venue: "Bramall Lane")
t48 = Team.create(name: "Southampton", short_name: "The Saints", last_updated: DateTime.now, venue: "St. Mary's Stadium")
t49 = Team.create(name: "Tottenham Hotspur", short_name: "Spurs", last_updated: DateTime.now, venue: "Tottenham Hotspur Stadium")
t50 = Team.create(name: "Watford", short_name: "The Hornets", last_updated: DateTime.now, venue: "Vicarage Road")
t51 = Team.create(name: "West Ham United", short_name: "The Irons", last_updated: DateTime.now, venue: "London Stadium")
t52 = Team.create(name: "Wolverhampton Wanderers", short_name: "Wolves", last_updated: DateTime.now, venue: "Molineux Stadium")
t53 = Team.create(name: "Atalanta", short_name: "Atalanta", last_updated: DateTime.now, venue: "Gewiss Stadium")
t54 = Team.create(name: "Bologna", short_name: "Bologna", last_updated: DateTime.now, venue: "Stadio Renato Dall'Ara") 
t55 = Team.create(name: "Brescia", short_name: "Brescia", last_updated: DateTime.now, venue: "Stadio Mario Rigamonti") 
t56 = Team.create(name: "Cagliari", short_name: "Cagliari", last_updated: DateTime.now, venue: "Sardegna Arena") 
t57 = Team.create(name: "Fiorentina", short_name: "Fiorentina", last_updated: DateTime.now, venue: "Stadio Artemio Franchi") 
t58 = Team.create(name: "Genoa", short_name: "Genoa", last_updated: DateTime.now, venue: "Stadio Luigi Ferraris") 
t59 = Team.create(name: "Hellas Verona", short_name: "Hellas Verona", last_updated: DateTime.now, venue: "Stadio Marc'Antonio Bentegodi") 
t60 = Team.create(name: "Internazionale", short_name: "Inter", last_updated: DateTime.now, venue: "San Siro") 
t61 = Team.create(name: "Juventus", short_name: "JFC", last_updated: DateTime.now, venue: "Allianz Stadium") 
t62 = Team.create(name: "Lazio", short_name: "Lazio", last_updated: DateTime.now, venue: "Stadio Olimpico") 
t63 = Team.create(name: "Lecce", short_name: "Lecce", last_updated: DateTime.now, venue: "Stadio Via del Mare")
t64 = Team.create(name: "Milan", short_name: "Milan", last_updated: DateTime.now, venue: "San Siro")
t65 = Team.create(name: "Napoli", short_name: "Napoli", last_updated: DateTime.now, venue: "Stadio San Polo")
t66 = Team.create(name: "Parma", short_name: "Parma", last_updated: DateTime.now, venue: "Stadio Ennio Tardini")
t67 = Team.create(name: "Roma", short_name: "Roma", last_updated: DateTime.now, venue: "Stadio Olimpico")
t68 = Team.create(name: "Sampdoria", short_name: "Sampdoria", last_updated: DateTime.now, venue: "Stadio Luigi Ferraris")
t69 = Team.create(name: "Sassuolo", short_name: "Sassuolo", last_updated: DateTime.now, venue: "Mapei Stadium - Citta del Tricolore")
t70 = Team.create(name: "SPAL", short_name: "SPAL", last_updated: DateTime.now, venue: "Stadio Paolo Mazzo")
t71 = Team.create(name: "Torino", short_name: "Torino", last_updated: DateTime.now, venue: "Stadio Olimpco Grande Torino") 
t72 = Team.create(name: "Udinese", short_name: "Udinese", last_updated: DateTime.now, venue: "Stadio Friuli")
t73 = Team.create(name: "Alaves", short_name: "Alaves", last_updated: DateTime.now, venue: "Mendizorrotza")
t74 = Team.create(name: "Athletic Bilbao", short_name: "Athletic Bilbao", last_updated: DateTime.now, venue: "San Mamés") 
t75 = Team.create(name: "Atlético Madrid", short_name: "Atlético Madrid", last_updated: DateTime.now, venue: "Metropolitano Stadium") 
t76 = Team.create(name: "FC Barcelona", short_name: "FCB", last_updated: DateTime.now, venue: "Camp Nou") 
t77 = Team.create(name: "Celta Vigo", short_name: "Celta Vigo", last_updated: DateTime.now, venue: "Abanca-Balaídos") 
t78 = Team.create(name: "Eibar", short_name: "Eibar", last_updated: DateTime.now, venue: "Ipurua") 
t79 = Team.create(name: "Espanyol", short_name: "RCDE", last_updated: DateTime.now, venue: "RCDE Stadium") 
t80 = Team.create(name: "Getafe", short_name: "Getafe", last_updated: DateTime.now, venue: "Coliseum Alfonso Pérez") 
t81 = Team.create(name: "Granada", short_name: "Granada", last_updated: DateTime.now, venue: "Nuevo Los Cármenes") 
t82 = Team.create(name: "Leganés", short_name: "Leganés", last_updated: DateTime.now, venue: "Butarque") 
t83 = Team.create(name: "Levante", short_name: "Levante", last_updated: DateTime.now, venue: "Ciutat de València") 
t84 = Team.create(name: "Mallorca", short_name: "Mallorca", last_updated: DateTime.now, venue: "Son Moix") 
t85 = Team.create(name: "Osasuna", short_name: "Osasuna", last_updated: DateTime.now, venue: "El Sadar") 
t86 = Team.create(name: "Real Betis", short_name: "RBB", last_updated: DateTime.now, venue: "Benito Villamarín") 
t87 = Team.create(name: "Real Madrid", short_name: "Real Madrid", last_updated: DateTime.now, venue: "Santiago Bernabéu") 
t88 = Team.create(name: "Real Sociedad", short_name: "Real Sociedad", last_updated: DateTime.now, venue: "Anoeta") 
t89 = Team.create(name: "Sevilla", short_name: "SFC", last_updated: DateTime.now, venue: "Ramón Sánchez Pizjuán") 
t90 = Team.create(name: "Valencia", short_name: "VCF", last_updated: DateTime.now, venue: "Mestalla") 
t91 = Team.create(name: "Valladolid", short_name: "Valladolid", last_updated: DateTime.now, venue: "José Zorrilla") 
t92 = Team.create(name: "Villarreal", short_name: "Villarreal", last_updated: DateTime.now, venue: "Estadio de la Cerámica") 
# Season seed data 
s1 = Season.create(start_date: Date.new(2018,6,14), end_date: Date.new(2018,7,15), name: "FIFA World Cup 2018") 
s2 = Season.create(start_date: Date.new(2014,6,12), end_date: Date.new(2014,7,13), name: "FIFA World Cup 2014") 
s3 = Season.create(start_date: Date.new(2019,8,8), end_date: Date.today, name: "2019-2020 Premier League") 
s4 = Season.create(start_date: Date.new(2018,8,10), end_date: Date.new(2019,5,12), name: "2018-2019 Premier League") 
s5 = Season.create(start_date: Date.new(2019,8,24), end_date: Date.today, name: "2019-2020 Serie A")
s6 = Season.create(start_date: Date.new(2018,8,18), end_date: Date.new(2019,5,26), name: "2018-2019 Serie A") 
s7 = Season.create(start_date: Date.new(2019,8,24), end_date: Date.today, name: "2019-2020 La Liga")
s8 = Season.create(start_date: Date.new(2018,8,17), end_date: Date.new(2019,5,19), name: "2018-2019 La Liga") 
# Match seed data 
m1 = Match.create(stage: "Group Stage", group: "Group A") 
m2 = Match.create(stage: "Group Stage", group: "Group B")
m3 = Match.create(stage: "Group Stage", group: "Group C")
m4 = Match.create(stage: "Group Stage", group: "Group D")
m5 = Match.create(stage: "Group Stage", group: "Group E")
m6 = Match.create(stage: "Group Stage", group: "Group F")
m7 = Match.create(stage: "Group Stage", group: "Group G") 
m8 = Match.create(stage: "Group Stage", group: "Group H") 
m9 = Match.create(stage: "Group Stage", group: "Group Stage") 
m10 = Match.create(stage: "Knockout", group: "Round of 16") 
m11 = Match.create(stage: "Knockout", group: "Quarter-Finals") 
m12 = Match.create(stage: "Knockout", group: "Semi-Finals") 
m13 = Match.create(stage: "Knockout", group: "3rd Place Playoffs") 
m14 = Match.create(stage: "Knockout", group: "Finals")  
# CurrentSeason seed data 
cs1 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t2, match_id: m1) 
cs2 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t13, match_id: m1) 
cs3 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t18, match_id: m1) 
cs4 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t28, match_id: m1) 
cs5 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t16, match_id: m2) 
cs6 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t20, match_id: m2) 
cs7 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t27, match_id: m2)   
cs8 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t29, match_id: m2) 
cs9 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t8, match_id: m3) 
cs10 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t19, match_id: m3) 
cs11 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t23, match_id: m3) 
cs12 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t25, match_id: m3) 
cs13 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t1, match_id: m4) 
cs14 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t7, match_id: m4) 
cs15 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t12, match_id: m4) 
cs16 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t32, match_id: m4) 
cs17 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t3, match_id: m5) 
cs18 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t9, match_id: m5) 
cs19 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t10, match_id: m5) 
cs20 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t32, match_id: m5) 
cs21 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t5, match_id: m6) 
cs22 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t6, match_id: m6) 
cs23 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t26, match_id: m6) 
cs24 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t30, match_id: m6) 
cs25 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t14, match_id: m7) 
cs26 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t21, match_id: m7) 
cs27 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t22, match_id: m7) 
cs28 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t24, match_id: m7) 
cs29 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t4, match_id: m8) 
cs30 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t11, match_id: m8) 
cs31 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t15, match_id: m8) 
cs32 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t17, match_id: m8) 
cs33 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t1, match_id: m10) 
cs34 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t25, match_id: m10) 
cs35 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t2, match_id: m10) 
cs36 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t27, match_id: m10) 
cs37 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t28, match_id: m10) 
cs38 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t29, match_id: m10) 
cs39 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t12, match_id: m10) 
cs40 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t23, match_id: m10) 
cs41 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t3, match_id: m10) 
cs42 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t5, match_id: m10) 
cs43 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t4, match_id: m10) 
cs44 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t22, match_id: m10) 
cs45 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t30, match_id: m10) 
cs46 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t31, match_id: m10) 
cs47 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t17, match_id: m10) 
cs48 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t24, match_id: m10) 
cs49 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t2, match_id: m11) 
cs50 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t25, match_id: m11) 
cs51 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t3, match_id: m11) 
cs52 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t22, match_id: m11) 
cs53 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t24, match_id: m11) 
cs54 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t30, match_id: m11) 
cs55 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t12, match_id: m11) 
cs56 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t28, match_id: m11) 
cs57 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t22, match_id: m12) 
cs58 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t25, match_id: m12) 
cs59 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t12, match_id: m12) 
cs60 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t24, match_id: m12)  
cs61 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t22, match_id: m13) 
cs62 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t24, match_id: m13) 
cs63 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t12, match_id: m14) 
cs64 = CurrentSeason.create(competition_id: c1, season_id: s1, team_id: t25, match_id: m14) 
# Player seed data 
# Egyptian Players t18
p1 = Player.create(name: "Essam El Hadary" , position: "GK", goals: 0, caps: 158, date_of_birth: Date.new(1973,1,15) , club: "Al-Taawoun")
p2 = Player.create(name: "Ali Gabr", position: "DF" , goals: 1 , caps: 21 , date_of_birth: Date.new(1989,1,1) , club: "West Bromwich Albion") 
p3 = Player.create(name: "Ahmed Elmohamady", position: "DF", goals: 2, caps: 78, date_of_birth: Date.new(1987,9,9), club: "Aston Villa")
p4 = Player.create(name: "Omar Gaber" , position: "MF", goals: 0 , caps: 24 , date_of_birth: Date.new(1992,1,30), club: "Los Angeles FC") 
p5 = Player.create(name: "Sam Morsy", position: "MF", goals: 0, caps: 5, date_of_birth: Date.new(1991,9,10), club: "Wigan Athletic") 
p6 = Player.create(name: "Ahmed Hegazy", position: "DF", goals: 1, caps: 45, date_of_birth: Date.new(1991,1,25), club: "West Bromwich Albion") 
p7 = Player.create(name: "Ahmed Fathy", position: "DF", goals: 3, caps: 126, date_of_birth: Date.new(1984,11,10), club: "Al Ahly") 
p8 = Player.create(name: "Tarek Hamed", position: "MF", goals: 0, caps: 21, date_of_birth: Date.new(1988,10,24), club: "Zamalek")
p9 = Player.create(name: "Marwan Mohsen", position: "FW", goals: 4, caps: 24, date_of_birth: Date.new(1989,2,26), club: "Al Ahly") 
p10 = Player.create(name: "Mohamed Salah", position: "FW", goals: 33, caps: 57, date_of_birth: Date.new(1992,6,15), club: "Liverpool") 
p11 = Player.create(name: "Kahraba", position: "FW", goals: 3, caps: 19, date_of_birth: Date.new(1994,4,13), club: "Al-Ittihad") 
p12 = Player.create(name: "Ayman Ashraf", position: "DF", goals: 0, caps: 4, date_of_birth: Date.new(1991,4,9), club: "Al Ahly") 
p13 = Player.create(name: "Mohamed Abdel Shafy", position: "DF", goals: 1, caps: 51, date_of_birth: Date.new(1985,7,1), club: "Al-Fateh") 
p14 = Player.create(name: "Ramadan Sobhi", position: "FW", goals: 1, caps: 23, date_of_birth: Date.new(1997,1,23), club: "Stoke City") 
p15 = Player.create(name: "Mahmoud Hamdy", position: "DF", goals: 0, caps: 0, date_of_birth: Date.new(1995,6,1), club: "Zamalek")
p16 = Player.create(name: "Sherif Ekramy", position: "GK", goals: 0, caps: 22, date_of_birth: Date.new(1983,7,10), club: "Al Ahly") 
p17 = Player.create(name: "Mohamed Elneny", position: "MF", goals: 5, caps: 61, date_of_birth: Date.new(1992,7,11), club: "Arsenal") 
p18 = Player.create(name: "Shikabala", position: "FW", goals: 2, caps: 29, date_of_birth: Date.new(1986,3,5), club: "Al-Raed")
p19 = Player.create(name: "Abdallah El Said", position: "MF", goals: 6, caps: 36, date_of_birth: Date.new(1985,7,13), club: "KuPS")
p20 = Player.create(name: "Saad Samir", position: "DF", goals: 0, caps: 11, date_of_birth: Date.new(1989,4,1), club: "Al Ahly") 
p21 = Player.create(name: "Trezeguet", position: "MF", goals: 2, caps: 24, date_of_birth: Date.new(1994,10,1), club: "Kasimpasa") 
p22 = Player.create(name: "Amr Warda", position: "FW", goals: 0, caps: 16, date_of_birth: Date.new(1993,9,17), club: "Atromitos") 
p23 = Player.create(name: "Mohamed El Shenawy", position: "GK", goals: 0, caps: 3, date_of_birth: Date.new(1988,12,18), club: "Al Ahly") 
# Russian Players t28 
p24 = Player.create(name: "Igor Akinfeev", position: "GK", goals: 0, caps: 106, date_of_birth: Date.new(1986,4,8), club: "CSKA Moscow") 
p25 = Player.create(name: "Mario Fernandes", position: "DF", goals: 0, caps: 5, date_of_birth: Date.new(1990,9,19), club: "CSKA Moscow") 
p26 = Player.create(name: "Ilya Kutepov", position: "DF", goals: 0, caps: 7, date_of_birth: Date.new(1993,7,29), club: "Spartak Moscow") 
p27 = Player.create(name: "Sergei Ignashevich", position: "DF", goals: 8, caps: 122, date_of_birth: Date.new(1979,7,14), club: "CSKA Moscow") 
p28 = Player.create(name: "Andrei Semyonov", position: "DF", goals: 0, caps: 6, date_of_birth: Date.new(1989,3,24), club: "Akhmat Grozny") 
p29 = Player.create(name: "Denis Cheryshev", position: "MF", goals: 0, caps: 11, date_of_birth: Date.new(1990,12,26), club: "Villarreal") 
p30 = Player.create(name: "Daler Kuzyayev", position: "MF", goals: 0, caps: 6, date_of_birth: Date.new(1993,1,15), club: "Zenit Saint Petersburg") 
p31 = Player.create(name: "Yury Gazinsky", position: "MF", goals: 0, caps: 6, date_of_birth: Date.new(1989,7,20), club: "Krasnodar") 
p32 = Player.create(name: "Alan Dzagoev", position: "MF", goals: 9, caps: 57, date_of_birth: Date.new(1990,6,17), club: "CSKA Moscow") 
p33 = Player.create(name: "Fyodor Smolov", position: "FW", goals: 12, caps: 32, date_of_birth: Date.new(1990,2,9), club: "Krasnodar") 
p34 = Player.create(name: "Roman Zobnin", position: "MF", goals: 0, caps: 12, date_of_birth: Date.new(1994,2,11), club: "Spartak Moscow") 
p35 = Player.create(name: "Andrey Lunyov", position: "GK", goals: 0, caps: 3, date_of_birth: Date.new(1991,11,13), club: "Zenit Saint Petersburg") 
p36 = Player.create(name: "Fyodor Kudryashov", position: "DF", goals: 0, caps: 19, date_of_birth: Date.new(1987,4,5), club: "Rubin Kazan") 
p37 = Player.create(name: "Vladimir Granat", position: "DF", goals: 1, caps: 12, date_of_birth: Date.new(1987,5,22), club: "Rubin Kazan") 
p38 = Player.create(name: "Aleksei Miranchuk", position: "MF", goals: 4, caps: 18, date_of_birth: Date.new(1995,10,17), club: "Lokomotiv Moscow") 
p39 = Player.create(name: "Anton Miranchuk", position: "MF", goals: 0, caps: 6, date_of_birth: Date.new(1995,10,17), club: "Lokomotiv Moscow") 
p40 = Player.create(name: "Aleksandr Golovin", position: "MF", goals: 2, caps: 19, date_of_birth: Date.new(1996,5,30), club: "CSKA Moscow") 
p41 = Player.create(name: "Yuri Zhirkov", position: "MF", goals: 2, caps: 84, date_of_birth: Date.new(1983,8,20), club: "Zenit Saint Petersburg") 
p42 = Player.create(name: "Aleksandr Samedov", position: "MF", goals: 7, caps: 48, date_of_birth: Date.new(1984,7,19), club: "Spartak Moscow") 
p43 = Player.create(name: "Vladimir Gabulov", position: "GK", goals: 0, caps: 10, date_of_birth: Date.new(1983,10,19), club: "Club Brugge") 
p44 = Player.create(name: "Aleksandr Yerokhin", position: "MF", goals: 0, caps: 17, date_of_birth: Date.new(1989,10,13), club: "Zenit Saint Petersburg") 
p45 = Player.create(name: "Artem Dyzuba", position: "FW", goals: 11, caps: 23, date_of_birth: Date.new(1988,8,22), club: "Arsenal Tula") 
p46 = Player.create(name: "Igor Smolnikov", position: "DF", goals: 0, caps: 27, date_of_birth: Date.new(1988,8,8), club: "Zenit Saint Petersburg") 
# Saudi Arabian Players t13 
p47 = Player.create(name: "Abdullah Al-Mayouf", position: "GK", goals: 0, caps: 11, date_of_birth: Date.new(1987,1,23), club: "Al-Hilal") 
p48 = Player.create(name: "Mansoor Al-Harbi", position: "DF", goals: 1, caps: 40, date_of_birth: Date.new(1987,10,19), club: "Al-Ahli") 
p49 = Player.create(name: "Osama Hawsawi", position: "DF", goals: 7, caps: 135, date_of_birth: Date.new(1984,3,31), club: "Al-Hilal") 
p50 = Player.create(name: "Ali Al-Bulaihi", position: "DF", goals: 0, caps: 4, date_of_birth: Date.new(1989,11,21), club: "Al-Hilal") 
p51 = Player.create(name: "Omar Hawsawi", position: "DF", goals: 3, caps: 42, date_of_birth: Date.new(1985,9,27), club: "Al-Nassr") 
p52 = Player.create(name: "Mohammed Al-Breik", position: "DF", goals: 1, caps: 11, date_of_birth: Date.new(1992,9,15), club: "Al-Hilal") 
p53 = Player.create(name: "Salman Al-Faraj", position: "MF", goals: 3, caps: 43, date_of_birth: Date.new(1989,8,1), club: "Al-Hilal") 
p54 = Player.create(name: "Yahya Al-Shehri", position: "MF", goals: 8, caps: 57, date_of_birth: Date.new(1990,6,26), club: "Leganes") 
p55 = Player.create(name: "Hattan Bahebri", position: "MF", goals: 0, caps: 5, date_of_birth: Date.new(1992,7,16), club: "Al-Shabab") 
p56 = Player.create(name: "Mohammad Al-Sahlawi", position: "FW", goals: 28, caps: 40, date_of_birth: Date.new(1987,1,10), club: "Al-Nassr") 
p57 = Player.create(name: "Abdulmalek Al-Khaibri", position: "MF", goals: 0, caps: 36, date_of_birth: Date.new(1986,3,13), club: "Al-Hilal") 
p58 = Player.create(name: "Mohamed Kanno", position: "MF", goals: 1, caps: 6, date_of_birth: Date.new(1994,9,22), club: "Al-Hilal") 
p59 = Player.create(name: "Yasser Al-Shahrani", position: "DF", goals: 0, caps: 37, date_of_birth: Date.new(1992,5,25), club: "Al-Hilal") 
p60 = Player.create(name: "Abdullah Otayf", position: "MF", goals: 1, caps: 16, date_of_birth: Date.new(1992,8,3), club: "Al-Hilal") 
p61 = Player.create(name: "Abdullah Al-Khaibari", position: "MF", goals: 0, caps: 5, date_of_birth: Date.new(1996,8,16), club: "Al-Shabab") 
p62 = Player.create(name: "Housain Al-Mogahwi", position: "MF", goals: 1, caps: 18, date_of_birth: Date.new(1988,3,24), club: "Al-Ahli") 
p63 = Player.create(name: "Taisir Al-Jassim", position: "MF", goals: 19, caps: 132, date_of_birth: Date.new(1984,7,25), club: "Al-Ahli") 
p64 = Player.create(name: "Salem Al-Dawsari", position: "MF", goals: 4, caps: 33, date_of_birth: Date.new(1991,8,19), club: "Villarreal") 
p65 = Player.create(name: "Fahad Al-Muwallad", position: "FW", goals: 10, caps: 45, date_of_birth: Date.new(1994,9,14), club: "Levante") 
p66 = Player.create(name: "Muhannad Assiri", position: "FW", goals: 4, caps: 18, date_of_birth: Date.new(1986,10,14), club: "Al-Ahli") 
p67 = Player.create(name: "Yasser Al-Mosailem", position: "GK", goals: 0, caps: 32, date_of_birth: Date.new(1984,2,27), club: "Al-Ahli") 
p68 = Player.create(name: "Mohammed Al-Owais", position: "GK", goals: 0, caps: 6, date_of_birth: Date.new(1991,10,10), club: "Al-Ahli") 
p69 = Player.create(name: "Motaz Hawsawi", position: "DF", goals: 0, caps: 17, date_of_birth: Date.new(1992,2,17), club: "Al-Ahli") 
