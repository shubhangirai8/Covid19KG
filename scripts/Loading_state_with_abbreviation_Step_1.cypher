// Loading state with abbreviation Step-1
LOAD CSV WITH HEADERS FROM
'https://raw.githubusercontent.com/jasonong/List-of-US-States/master/states.csv' AS line
WITH line
 
CREATE (state: State {name: line.State})
SET state.Abbreviation = line.Abbreviation
 
RETURN state