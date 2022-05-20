// Load vaccine data Float Step-5
:auto USING PERIODIC COMMIT 1000
LOAD CSV WITH HEADERS FROM
'https://data.cdc.gov/api/views/unsk-b7fc/rows.csv' AS line
WITH line, SPLIT(line.Date,'/') AS dates

MATCH (state:State)
MATCH (population: Population{name : state.name})
WHERE state.Abbreviation=line.Location


MERGE (vaccine:Vaccination {
Administered_Dose1_Recip : TOFLOAT((TOFLOAT(line.Administered_Dose1_Recip) * 1000000) / population.total_population) ,
Administered : TOFLOAT((TOFLOAT(line.Administered) * 1000000) / population.total_population) ,
Administered_Pfizer : TOFLOAT((TOFLOAT(line.Administered_Pfizer) * 1000000) / population.total_population) ,
Administered_Moderna : TOFLOAT((TOFLOAT(line.Administered_Moderna) * 1000000) / population.total_population) ,
Administered_Unk_Manuf : TOFLOAT((TOFLOAT(line.Administered_Unk_Manuf) * 1000000) / population.total_population),
Administered_Janssen : TOFLOAT((TOFLOAT(line.Administered_Janssen) * 1000000) / population.total_population),
month: TOINTEGER(dates[0]),
day : TOINTEGER(dates[1]),
year :TOINTEGER(dates[2])

})


CREATE (state)-[:VACCINATED{month: TOINTEGER(dates[0]), day : TOINTEGER(dates[1]), year :TOINTEGER(dates[2])}]->(vaccine)
