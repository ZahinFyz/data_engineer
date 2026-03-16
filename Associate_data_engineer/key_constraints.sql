--combination of two keys can make a super key--
SELECT
    COUNT(DISTINCT (firstname, lastname))
   

FROM professors;


ALTER TABLE
    organizations
RENAME COLUMN 
    organization TO id; 


ALTER TABLE 
    organizations
-- constraint er name hocche organization_pk 
-- eta table a kothao show korbe na
-- eta id er constraint type hye thakbe
-- so ekhane basically bola hocche notun ekta constraint add koro jetar type hocche
-- primary key on the column named id
ADD CONSTRAINT
    organization_pk PRIMARY KEY (id); 