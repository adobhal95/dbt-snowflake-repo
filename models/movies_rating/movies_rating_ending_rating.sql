select *
from {{ref("movies_name_ending")}}
where imdbrating between 7 and 9