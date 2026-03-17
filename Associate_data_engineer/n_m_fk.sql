--N:M foreign key--

ALTER TABLE
    affiliations
ADD COLUMN professor_id INTEGER REFERENCES  professors (id);

ALTER TABLE 
    affiliations
RENAME COLUMN
    organization TO organization_id;

ALTER TABLE 
    affiliations
ADD CONSTRAINT
    affiliations_organization_fkey FOREIGN KEY (organization_id) REFERENCES
    organizations(id);



UPDATE
    affiliations
SET 
    professor_id = professors.id
FROM professors
WHERE
    affiliations.firstname = professors.firstname
    AND affiliations.lastname = professors.lastname;
