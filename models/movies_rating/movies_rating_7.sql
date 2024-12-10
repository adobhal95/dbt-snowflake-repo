select * from {{source("MOVIES_SNOWFLAKE","MOVIES")}}
where imdbrating between 7 and 8