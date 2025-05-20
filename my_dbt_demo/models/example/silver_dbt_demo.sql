{{
    config(
        materialized='materialized_view',
        tblProperties={
            'delta.enableChangeDeltaFeed': 'true'
        }
    )
}}

SELECT country, COUNT(1) AS cnt FROM {{ ref('bronze_four_cs') }}
GROUP BY country