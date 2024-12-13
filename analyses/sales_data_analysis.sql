{% set existing_columns = adapter.get_columns_in_relation(
    source("assignment", "assignment7")
) %}
{{ add_columns(source("assignment", "assignment7"), existing_columns[1:]) }}
