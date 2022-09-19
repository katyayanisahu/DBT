{% macro find_sum(column_name) %}
   avg({{ column_name }})::numeric(16)
{% endmacro %}
