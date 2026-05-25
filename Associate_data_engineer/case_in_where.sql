SELECT

	season
	, date
	, home_goal
	, away_goal

FROM matches_italy

WHERE
	CASE
		WHEN hometeam_id = 9857 AND home_goal > away_goal THEN 'Bologna Win'
		WHEN awayteam_id = 9857 AND home_goal < away_goal THEN 'Bologna Win'
	END IS NOT NULL;