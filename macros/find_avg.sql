
{% macro find_avg(column_name, precisionN) %}
   avg({{ column_name }})::numeric(16 , {{ precisionN }})
{% endmacro %}
