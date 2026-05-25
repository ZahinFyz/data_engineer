SELECT

	c.name AS country
	, COUNT(CASE
				WHEN m.season = '2012/2013' THEN m.id END)
			AS matches_2012_2013
	, COUNT(CASE
				WHEN m.season = '2013/2014' THEN m.id END)
			AS matches_2013_2014

FROM country AS c
	LEFT JOIN match AS m 
ON c.id = m.country_id

GROUP BY c.name; 


