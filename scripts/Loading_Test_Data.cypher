// Loading Test Data
:auto USING PERIODIC COMMIT 1000
LOAD CSV WITH HEADERS FROM
'https://raw.githubusercontent.com/scalation/data/master/COVID-State/2022-03-19-States-CSSE-JHU.csv' AS line
WITH line,SPLIT(line.Date,'/') AS dates

MATCH (s:State)
WHERE (s.name = line.State)
MERGE (test:Test {
total_result : TOINTEGER(line.Total_Test_Results), people_hospitalized : TOINTEGER(line.People_Hospitalized), month: TOINTEGER(dates[0]), day: TOINTEGER(dates[1]), year : TOINTEGER(dates[2]) } )
MERGE (s)-[r:HAS_TEST{month: TOINTEGER(dates[0]), day: TOINTEGER(dates[1]), year : TOINTEGER(dates[2])}]->(test)