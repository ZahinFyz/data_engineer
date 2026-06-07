SELECT
    m.stage
      --this is for row by row calculation
    , ROUND(AVG(m.home_goal + m.away_goal), 2) AS avg_goals
      --this is for whole column calculation, returns 1 value
    , ROUND(
        (SELECT
            AVG(home_goal + away_goal)
        FROM match
        WHERE
            season = '2012/2013'), 2
    ) AS overall


FROM match AS m
WHERE
    season = '2012/2013'

GROUP BY
    stage;


