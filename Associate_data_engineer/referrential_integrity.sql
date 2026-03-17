--Referrential Integrity--

ALTER TABLE 
    affiliations
DROP CONSTRAINT 
    affiliations_organization_id_fkey;


ALTER TABLE 
    affiliations
ADD CONSTRAINT 
    affiliations_organization_id_fkey FOREIGN KEY (organization_id)
    REFERENCES organizations (id) ON DELETE CASCADE;