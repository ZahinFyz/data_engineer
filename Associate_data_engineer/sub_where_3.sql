SELECT
	team_long_name
	, team_short_name

FROM team

WHERE team_api_id  IN (
	SELECT
		hometeam_id
	FROM match
	WHERE
		home_goal >= 8

);
