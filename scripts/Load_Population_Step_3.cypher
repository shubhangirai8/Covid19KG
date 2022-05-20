// Load Population Step-3
LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State{name: 'Alabama' })
CREATE ( population:Population)
SET population.name = state.name, population.total_populations = TOINTEGER(line.Alabama)
MERGE (state)-[:HAS_POPULATION]->(population);


LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State{name: 'Alaska' })
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Alaska)})
MERGE (state)-[:HAS_POPULATION ]->(population);



LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Arizona"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Arizona )})
MERGE (state)-[:HAS_POPULATION ]->(population);


LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Arkansas"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Arkansas )})
MERGE (state)-[:HAS_POPULATION ]->(population);
LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="California"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.California )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Colorado"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Colorado )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Connecticut"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Connecticut )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Delaware"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Delaware )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="District of Columbia"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`District of Columbia` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Florida"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Florida )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Georgia"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Georgia )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Guam"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Guam )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Hawaii"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Hawaii )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Idaho"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Idaho )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Illinois"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Illinois )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Indiana"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Indiana )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Iowa"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Iowa )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Kansas"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Kansas )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Kentucky"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Kentucky )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Louisiana"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Louisiana )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Maine"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Maine )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Maryland"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Maryland )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Massachusetts"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Massachusetts )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Michigan"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Michigan )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Minnesota"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Minnesota )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Mississippi"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Mississippi )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Missouri"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Missouri )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Montana"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Montana )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Nebraska"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Nebraska )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Nevada"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Nevada )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="New Hampshire"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`New Hampshire` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="New Jersey"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`New Jersey` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="New Mexico"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`New Mexico` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="New York"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`New York` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="North Carolina"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`North Carolina` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="North Dakota"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`North Dakota` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Ohio"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Ohio )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Oklahoma"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Oklahoma )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Oregon"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Oregon )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Pennsylvania"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Pennsylvania )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Puerto Rico"

CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`Puerto Rico` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Rhode Island"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`Rhode Island` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="South Carolina"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`South Carolina` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="South Dakota"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`South Dakota` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Tennessee"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Tennessee )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Texas"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Texas )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Utah"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Utah )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Vermont"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Vermont )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Virginia"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Virginia )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Washington"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Washington )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="West Virginia"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`West Virginia` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Wisconsin"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Wisconsin )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Wyoming"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.Wyoming )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="American Samoa"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`American Samoa` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Northern Mariana Islands"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`Northern Mariana Islands` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

LOAD CSV WITH HEADERS FROM "file:///popu.csv" AS line WITH line LIMIT 1
MATCH (state:State)
WHERE state.name="Virgin Islands"
CREATE ( population:Population{name : state.name, total_population: TOINTEGER(line.`Virgin Islands` )})
MERGE (state)-[:HAS_POPULATION ]->(population);

