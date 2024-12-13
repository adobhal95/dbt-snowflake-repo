{% macro add_columns(dataset_name, new_columns, suffix="_in_", currency="rupees") %}
    select
        *,
        {% for column in new_columns %}
            null as {{ column.name }}{{ suffix }}{{ currency }}
            {% if not loop.last %}, {% endif %}
        {% endfor %}
    from {{ dataset_name }}
{% endmacro %}
