select *
from {{ source("MOVIES_SNOWFLAKE", "MOVIES") }}
where imdbrating between 8 and 9
