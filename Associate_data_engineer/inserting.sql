INSERT INTO professors 
SELECT 
    DISTINCT firstname
    , lastname
    , university_shortname 


FROM university_professors;


SELECT * 
FROM professors;