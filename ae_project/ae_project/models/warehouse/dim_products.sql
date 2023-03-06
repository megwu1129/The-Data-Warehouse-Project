WITH source AS (
    SELECT
        p.id AS product_id
        , p.product_code
        , p.product_name
        , p.description
        , s.company
        , p.standard_cost
        , p.list_price
        , p.reorder_level
        , p.target_level
        , p.quantity_per_unit
        , p.discontinued
        , p.minimum_reorder_quantity
        , p.category
        , p.attachments
        , CURRENT_TIMESTAMP() AS insertion_timestamp
    FROM {{ref('stg_products')}} p
    LEFT JOIN {{ref('stg_suppliers')}} s
    ON s.id = p.supplier_id
)

, unique_source AS (
    SELECT
        *
        , ROW_NUMBER() OVER(PARTITION BY product_id) AS r_number
    FROM source
)

SELECT *
EXCEPT (r_number)
FROM unique_source
WHERE r_number = 1