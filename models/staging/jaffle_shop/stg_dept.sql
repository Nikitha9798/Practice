with department as(
    select
    deptno as id,
    dname,
    loc
    --from raw.jaffle_shop.dept
    from {{source('jaffle_shop','dept')}}
)
select * from department