
{% macro test_macros(column_name) %}
    ({{ column_name }} * 100)::numeric(16)
{% endmacro %}
