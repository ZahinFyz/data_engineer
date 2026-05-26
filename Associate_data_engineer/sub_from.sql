SELECT
    c.name AS country_name
    , COUNT(sub.id) AS matches

FROM country AS c
INNER JOIN (
    SELECT
        country_id
        , id 
    FROM match
    WHERE
        home_goal + away_goal >= 10
) as sub 

ON c.id = sub.country_id

GROUP BY
    country_name;

