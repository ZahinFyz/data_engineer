SELECT
    transaction_date
    , amount + CAST(fee AS INTEGER) AS net_amount


FROM transactions;