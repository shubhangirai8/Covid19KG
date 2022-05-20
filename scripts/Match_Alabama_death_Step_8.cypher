// Match Alabama death Step-8
MATCH (s:State)-[:HAS_DEATH]->(d:Death)
WHERE (s.name = "Alabama")
SET d.deaths = d.death
RETURN d