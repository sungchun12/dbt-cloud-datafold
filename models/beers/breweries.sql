
{{ config(
    materialized="table"
) }}

SELECT
  id                    AS brewery_id,
  trim(name)            AS brewery_names,
  trim(city)            AS brewery_citysss,
  trim(state)           AS brewery_state,
  'USA'                 AS brewery_country
FROM
  {{ ref('seed_breweries') }}
