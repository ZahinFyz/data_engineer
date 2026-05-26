SELECT
    country
    , date
    , home_goal
    , away_goal


FROM (
    SELECT
        c.name AS country
        , m.date
        , m.home_goal
        , m.away_goal
        , (m.home_goal + m.away_goal) AS total_goals

    FROM country AS c 
        LEFT JOIN match AS m
    ON c.id = m.country_id
) AS sub
WHERE
    total_goals >= 10;


