--meeting_1nf--

CREATE TABLE cust_rentals(
  customer_id INT NOT NULL
  , car_id VARCHAR(128) NULL
  , invoice_id VARCHAR(128) NULL
);

ALTER TABLE
  customers
DROP COLUMN 
  cars_rented, 
DROP COLUMN
  invoice_id;