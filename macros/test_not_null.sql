{% macro test_not_null(model) %}

{% set column_name = kwargs.get('column_name', kwargs.get('arg')) %}

with test_table as (
    select * from {{ model }}
),

-- customer first_name is not null
final as (
    select
        customer_id,
        '{{ model_name }}' as test_name,
        {{ column_name }},
        {{ column_name }} is not null as is_ok
    from test_table

)

select * from final


{% endmacro %}
