{%- set current_ts = "CURRENT_DATETIME('Asia/Bangkok')" -%}

{{ config(materialized='table') }}

with cte as (
    select * from {{ ref('dbt01_simple')}}
)
select * from cte