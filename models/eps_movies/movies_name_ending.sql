-- {{config(materialized="ephemeral")}}
select *
from {{source("MOVIES_SNOWFLAKE","MOVIES")}} as movies
where movies.title like '%e'