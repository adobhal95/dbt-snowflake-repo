{% set genres = dbt_utils.get_column_values(table=source("DB_MOVIES","MOVIES"),column="genres") %}
{% for genre in set(genres) %}
{{genre}}
{% endfor %}