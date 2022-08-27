with employees as(
    select * from {{ ref('stg_emp') }}
),

department as(
    select * from {{ ref('stg_dept') }}
),

employee_dept as(
    select
    id,
    full_name,
    monthly_sal,
    monthly_sal*12 as annual_sal
    from employees
),
final as(
    select
    id,
    full_name,
    monthly_sal,
    annual_sal
    from employee_dept left join department using (id)
)
select * from final