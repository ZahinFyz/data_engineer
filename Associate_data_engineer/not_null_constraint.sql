ALTER TABLE 
    professors
ALTER COLUMN
    firstname SET NOT NULL;

ALTER TABLE
    professors
ALTER COLUMN
    lastname SET NOT NULL;

ALTER TABLE
    universities
ADD CONSTRAINT
    university_shortname_unq UNIQUE(university_shortname);

ALTER TABLE
    organizations
ADD CONSTRAINT
    organization_unq UNIQUE(organization);

