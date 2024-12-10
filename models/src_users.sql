select ru.id as id, ru.user as user, rc.country as countryname
from {{ source("sc_assignment", "raw_users") }} as ru
inner join {{ source("sc_assignment", "raw_country") }} as rc on ru.country = rc.country_id
