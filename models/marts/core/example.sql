with example as(
    select * from {{ ref('stg_sample') }}
)
select * from example