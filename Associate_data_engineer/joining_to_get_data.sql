--joining_to_get_data__
SELECT
    dim_store_star.state
    , SUM(fact_booksales.sales_amount)

FROM fact_booksales
    JOIN dim_book_star 
        ON fact_booksales.book_id = dim_book_star.book_id
    JOIN dim_store_star 
        ON fact_booksales.store_id = dim_store_star.store_id

WHERE  
    dim_book_star.genre = 'novel'
GROUP BY
    dim_store_star.state;