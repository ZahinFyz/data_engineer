--surrogate_key__
ALTER TABLE
    professors
ADD COLUMN 
    id serial;

ALTER TABLE
    professors
ADD CONSTRAINT
    professors_pkey PRIMARY KEY(id);

SELECT
    *

FROM professors

LIMIT 10;



--CONCAT surrogate --
SELECT 
    COUNT(DISTINCT (make, model))

FROM cars;

ALTER TABLE
    cars
ADD COLUMN
    id VARCHAR(128);

UPDATE
    cars 
SET id = CONCAT(make, model); 

ALTER TABLE 
    cars 
ADD CONSTRAINT 
    id_pk PRIMARY KEY(id);


--table creation--
CREATE TABLE students(
  last_name VARCHAR(128) NOT NULL
  , ssn INTEGER PRIMARY KEY
  , phone_no CHAR(12)
);
