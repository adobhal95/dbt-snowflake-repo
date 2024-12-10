select rs.sales_id as sales_id, rs.sales as sales, cl.country_name as country_name
from {{ source("assignment", "raw_sales") }} rs
inner join {{ ref("country_lookup") }} cl on rs.country = cl.country_code
