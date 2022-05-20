// Match Alabama population Step-4
MATCH (n:Population)
WHERE (n.name = "Alabama")
SET n.total_population = n.total_populations
RETURN n