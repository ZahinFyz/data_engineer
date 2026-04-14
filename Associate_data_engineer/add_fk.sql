--adding foreign key to facts table--
--add_fk--

ALTER TABLE fact_booksales
    
    ADD CONSTRAINT sales_book
    FOREIGN KEY (book_id)
        REFERENCES dim_book_star(book_id);

ALTER TABLE fact_booksales

    ADD CONSTRAINT sales_time
    FOREIGN KEY (time_id)
        REFERENCES dim_time_star(time_id);

ALTER TABLE fact_booksales

    ADD CONSTRAINT sales_store
    FOREIGN KEY (store_id)
        REFERENCES dim_store_star(store_id);