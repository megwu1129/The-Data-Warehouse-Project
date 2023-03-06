WITH source AS (
    SELECT * FROM `ae-bootcamp-379604.dl_northwind.employees`
)

SELECT
    *
    , CURRENT_TIMESTAMP() AS ingestion_timestamp
FROM source
