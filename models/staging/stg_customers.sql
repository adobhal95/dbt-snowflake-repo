with
    raw_cust as (
        select * from {{ source("Snowflake_Source", "raw_customers") }}
        ),
    final as (
        select id as customer_id, first_name, last_name from raw_cust
        )
select *
from final
