{%- set current_date = modules.datetime.datetime.now().strftime("%Y-%m-%d") -%}

select *, {{- diff_date_product("ship_date", current_date) -}} as shipped_days_ago,
{{- diff_date_product("delivered_date", current_date) -}} as delivered_days_ago
from {{ source("ASSIGNMENTS", "ASSIGNMENT6") }}