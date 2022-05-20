// Loading state with region and division Step-2
LOAD CSV WITH HEADERS FROM
'https://raw.githubusercontent.com/kjhealy/fips-codes/master/state_fips_master.csv' AS line
WITH line
MATCH (state:State{name: line.state_name})
SET state.division = TOINTEGER(line.division), state.fips = TOINTEGER(line.fips), state.region = TOINTEGER(line.region)
return state