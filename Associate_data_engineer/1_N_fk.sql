-- 1:N foreign_key --
ALTER TABLE 
    professors
RENAME COLUMN
    university_shortname TO university_id;

ALTER TABLE
    professors
ADD CONSTRAINT
    professors_fkey FOREIGN KEY(university_id) REFERENCES universities(id);


SELECT
    professors.lastname
    , universities.id
    , universities.university_city

FROM professors
    LEFT JOIN universities
ON professors.university_id = universities.id 
WHERE
    universities.university_city = 'Zurich'; 