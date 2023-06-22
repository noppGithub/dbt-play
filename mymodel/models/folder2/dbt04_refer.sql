{%- set current_ts = "CURRENT_DATETIME('Asia/Bangkok')" -%}

{{ config(materialized='view') }}

with cte as (
    select a.customer_name,b.customer_name as cname,a.created_at as crt 
    from {{ ref('dbt01_simple')}} a
    left join {{ ref('dbt02_config_var')}} b
     on a.customer_name = b.customer_name
)
select * from cte