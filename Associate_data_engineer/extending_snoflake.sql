--extending_snoflake--
ALTER TABLE
   dim_country_sf
ADD 
   continent_id INT NOT NULL DEFAULT(1);

ALTER TABLE dim_country_sf
   ADD CONSTRAINT country_continent
      FOREIGN KEY (continent_id) REFERENCES dim_continent_sf(continent_id);

SELECT * FROM dim_country_sf;