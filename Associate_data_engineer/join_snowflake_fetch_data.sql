--join_snowflake_fetch_data--

SELECT 
    dim_state_sf.state
    , SUM(fact_booksales.sales_amount)

FROM fact_booksales
    JOIN dim_book_sf
        ON fact_booksales.book_id = dim_book_sf.book_id
    JOIN dim_genre_sf 
        ON dim_book_sf.genre_id = dim_genre_sf.genre_id
    
    JOIN dim_store_sf 
        ON fact_booksales.store_id = dim_store_sf.store_id
    JOIN dim_city_sf 
        ON dim_store_sf.city_id = dim_city_sf.city_id
	JOIN dim_state_sf 
        ON  dim_city_sf.state_id = dim_state_sf.state_id

WHERE  
    dim_genre_sf.genre = 'novel'
GROUP BY
    dim_state_sf.state;