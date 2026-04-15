--meeting_3nf_criteria--

CREATE TABLE car_model(
  model VARCHAR(128)
  , manufacturer VARCHAR(128)
  , type_car VARCHAR(128)
);

ALTER TABLE 
  rental_cars

  DROP COLUMN manufacturer
  , DROP COLUMN type_car; 