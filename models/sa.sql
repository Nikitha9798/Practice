with sam as(
    select * from {{ ref('stg_customers') }}
)
select * from sam