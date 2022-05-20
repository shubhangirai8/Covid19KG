// Float wise Death Step-7
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates
MATCH (state:State{name: 'Alabama' }) 
MATCH (population:Population{name: state.name})
CREATE (death:Death) 
SET death.death = ((TOINTEGER(line.Alabama)/population.total_population) * 1000000)
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]),  day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death); 


LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates
MATCH (state:State{name: 'Alaska' })
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Alaska) * 10000000) / population.total_population)})
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);



LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Arizona"
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Arizona ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);


LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Arkansas" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Arkansas ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="California" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.California ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Colorado" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Colorado ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Connecticut" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Connecticut ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Delaware" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Delaware ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="DistrictofColumbia"
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`District of Columbia` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Florida" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Florida ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Georgia" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Georgia ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Guam" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Guam ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Hawaii" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Hawaii ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Idaho" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Idaho ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Illinois" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Illinois ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Indiana" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Indiana ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Iowa" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Iowa ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Kansas" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Kansas ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Kentucky" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Kentucky ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Louisiana" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Louisiana ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Maine" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Maine ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Maryland" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Maryland ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Massachusetts" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Massachusetts ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Michigan" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Michigan ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Minnesota" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Minnesota ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Mississippi" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Mississippi ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Missouri" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Missouri ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Montana" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Montana ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Nebraska" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Nebraska ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Nevada" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Nevada ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="NewHampshire" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`New Hampshire` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="NewJersey" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`New Jersey` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="NewMexico" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`New Mexico` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="NewYork" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`New York` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="NorthCarolina" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`North Carolina` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="NorthDakota" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`North Dakota` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Ohio" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Ohio ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Oklahoma" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Oklahoma ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Oregon" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Oregon ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Pennsylvania" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Pennsylvania ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="PuertoRico" 
  
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`Puerto Rico` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="RhodeIsland" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`Rhode Island` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="SouthCarolina" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`South Carolina` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="SouthDakota" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`South Dakota` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Tennessee" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Tennessee ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Texas" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Texas ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Utah" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Utah ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Vermont" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Vermont ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Virginia" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Virginia ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Washington" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Washington ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="WestVirginia" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`West Virginia` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Wisconsin" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Wisconsin ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="Wyoming" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.Wyoming ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="AmericanSamoa" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`American Samoa` ) * 10000000) / population.total_populations)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="NorthernMarianaIslands" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`Northern Mariana Islands` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);

LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/scalation/data/master/COVID-State/state_daily_deaths.csv" AS line WITH line , SPLIT(line.Date,'-') AS dates 
MATCH (state:State) 
WHERE   state.name="VirginIslands" 
MATCH (population:Population{name: state.name})                MERGE (death:Death{deaths: TOFLOAT((TOINTEGER(line.`Virgin Islands` ) * 10000000) / population.total_population)})  
MERGE (state)-[:HAS_DEATH{month: TOINTEGER(dates[1]), day : TOINTEGER(dates[0]), year :TOINTEGER(dates[2])}]->(death);



