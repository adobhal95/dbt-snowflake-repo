{# macro to find the difference in dates #}
{% macro diff_date_product(date1, date2, unit='day') %}
    {{
        adapter.dispatch("date_diff", "default")(
            start_date=date1, end_date=date2, unit=unit
        )
    }}
{% endmacro %}

{% macro default__date_diff(start_date, end_date, unit) %}
    case
        when '{{ unit }}' = 'day'
        then datediff(day, TO_DATE({{ start_date }}::varchar,'DD-MM-YYYY'), '{{ end_date }}')
        when '{{ unit }}' = 'month'
        then datediff(month, TO_DATE({{ start_date }}::varchar,'DD-MM-YYYY'), '{{ end_date }}')
        when '{{ unit }}' = 'year'
        then datediff(year, TO_DATE({{ start_date }}::varchar,'DD-MM-YYYY'), '{{ end_date }}')
        else null
    end
{% endmacro %}
