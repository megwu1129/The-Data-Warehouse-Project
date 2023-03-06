WITH source AS (
    SELECT * FROM {{ source('northwind', 'order_status')}}
)

SELECT * FROM source
