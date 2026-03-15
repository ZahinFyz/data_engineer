--information_schema--

SELECT
    table_name

FROM information_schema.tables
WHERE
    table_schema = 'public';