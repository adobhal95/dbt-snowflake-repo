select * from {{ source("Snowflake_Source_raw", "raw_payments") }}
