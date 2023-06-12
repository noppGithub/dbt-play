{%- set current_ts = "CURRENT_DATETIME('Asia/Bangkok')" -%}

{{ config(materialized='table') }}

with cte as (
select 'np' as customer_name, {{ current_ts }} as created_at
union all
select 'dbt' as customer_name, {{ current_ts }} as created_at
)
select * from cte