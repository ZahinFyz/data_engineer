--dimension_table

CREATE TABLE dim_author(
    author VARCHAR(256) NOT NULL
);

INSERT INTO
    dim_author

SELECT
    DISTINCT author
FROM dim_book_star;
 
ALTER TABLE
    dim_author
    
ADD COLUMN
    author_id SERIAL PRIMARY KEY;


SELECT
    *
FROM dim_author;