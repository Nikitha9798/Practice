with employees as(
    select 
    deptno as id,
    ename as full_name,
    sal as monthly_sal
    
    from {{source('jaffle_shop','emp')}}
)
select * from employees