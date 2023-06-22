{{ config(materialized='view') }}

with cte as (
select 'np' as customer_name, current_timestamp() as created_at
union all
select 'dbt' as customer_name, current_timestamp() as created_at
)

select * from cte
