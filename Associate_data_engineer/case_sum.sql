SELECT
    season
    , SUM(
        CASE
            WHEN hometeam_id = 8560 THEN home_goal END  
    ) AS home_goals
    , SUM(
        CASE
            WHEN awayteam_id = 8560 THEN away_goal END 
    ) AS away_goals

FROM match
GROUP BY 
    season;
