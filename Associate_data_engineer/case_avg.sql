SELECT

	c.name AS country
	, AVG(
		CASE
			WHEN m.season = '2013/2014' AND m.home_goal = m.away_goal THEN 1
			WHEN m.season = '2013/2014' AND m.home_goal != m.away_goal THEN 0
		END
	) AS ties_2013_2014
	, AVG(
		CASE
			WHEN m.season = '2014/2015' AND m.home_goal = m.away_goal THEN 1
			WHEN m.season = '2014/2015' AND m.home_goal != m.away_goal THEN 0
		END
	) AS ties_2014_2015


FROM country AS c
	LEFT JOIN matches AS m
ON c.id = m.country_id

GROUP BY
	country;

