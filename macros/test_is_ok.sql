

{% macro test_is_ok(model) %}

select count(*) as validation_errors
from {{ model }}
where not(is_ok)

{% endmacro %}
