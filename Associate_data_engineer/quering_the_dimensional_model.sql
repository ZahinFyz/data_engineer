SELECT
	SUM(runs_fact.duration_mins)
FROM runs_fact
	INNER JOIN week_dim
	ON runs_fact.week_id = week_dim.week_id
WHERE 
	week_dim.month = 'July'
	AND week_dim.year = '2019';
