{{ config(
    materialized='table'
) }}

select * from movies_dbt