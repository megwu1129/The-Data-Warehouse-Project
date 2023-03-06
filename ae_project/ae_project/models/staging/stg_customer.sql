WITH source AS (
    SELECT * FROM `ae-bootcamp-379604.dl_northwind.customer`
)

SELECT
    *
    , CURRENT_TIMESTAMP() AS ingestion_timestamp
FROM source