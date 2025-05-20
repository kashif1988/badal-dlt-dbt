{{
    config(
        materialized='streaming_table'
    )
}}

SELECT CAST(user_id AS INTEGER),
        CAST(name AS STRING),
        CAST(age AS INTEGER),
        CAST(country AS STRING),
        CAST(signup_date AS DATE)
FROM STREAM read_files("dbfs:/Volumes/main__build/dlt/raw_files")