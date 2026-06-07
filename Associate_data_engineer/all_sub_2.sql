SELECT
	stage
	, avg_goals AS avg_goal
	, (
		SELECT
			AVG(home_goal + away_goal)
		FROM match 
		WHERE
			season = '2012/2013'
	) AS overall_avg

FROM (
		SELECT 
			m.stage
			, ROUND(AVG(m.home_goal + m.away_goal), 2) AS avg_goals

		FROM match as m 
		WHERE 
			m.season = '2012/2013'

		GROUP BY m.stage 
	) AS s
WHERE 
	s.avg_goals > (
		SELECT
			AVG(home_goal + away_goal)
		FROM match 
		WHERE
			season = '2012/2013'
	);





