WITH source AS (
    SELECT
        id AS employee_id
        , company
        , last_name
        , first_name
        , email_address
        , job_title
        , business_phone
        , home_phone
        , mobile_phone
        , fax_number
        , address
        , city
        , state_province
        , zip_postal_code
        , country_region
        , web_page
        , notes
        , attachments
        , CURRENT_TIMESTAMP() AS insertion_timestamp
    FROM {{ref('stg_employee')}}
)

, unique_source AS (
    SELECT
        source.*
        , ROW_NUMBER() OVER(PARTITION BY employee_id) AS r_number
    FROM source
)

SELECT *
EXCEPT (r_number)
FROM unique_source
WHERE r_number = 1
