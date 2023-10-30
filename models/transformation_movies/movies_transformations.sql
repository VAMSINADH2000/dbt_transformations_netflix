{{
config(
materialized = 'table',
on_schema_change='fail'
)
}}

with movies_first_transform AS (

SELECT * FROM DUMMY.PUBLIC.movies_dbt
)

SELECT 
cast(substring(show_id, 2) as integer) as show_id,
coalesce(director, 'vamsi') as director,
lower(description) as description,
type,
listed_in,
rating,
country
FROM movies_first_transform


