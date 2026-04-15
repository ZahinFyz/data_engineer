CREATE TABLE cars(
  car_id VARCHAR(256) NULL
  , model VARCHAR(128)
  , manufacturer VARCHAR(128)
  , type_car VARCHAR(128)
  , condition VARCHAR(128)
  , color VARCHAR(128)
);
--meeting_2nf_ccriteria--
INSERT INTO 
  cars

SELECT 
  DISTINCT
    car_id
    , model
    , manufacturer
    , type_car
    , condition
    , color

FROM  customer_rentals;

ALTER TABLE 
  customer_rentals
  
  DROP COLUMN model
  , DROP COLUMN manufacturer
  , DROP COLUMN type_car
  , DROP COLUMN condition
  , DROP COLUMN color;  