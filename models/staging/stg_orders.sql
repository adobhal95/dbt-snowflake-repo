with
    raw_order as (
        select * from {{ source("Snowflake_Source", "raw_orders") }}
        ),
    final as (
        select id as order_id, user_id as customer_id,order_date, status from raw_order
        )
select *
from final