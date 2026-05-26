SELECT

	team_long_name
	, team_short_name	

FROM team

WHERE team_api_id NOT IN (
	SELECT

		DISTINCT hometeam_id

	FROM match
);
