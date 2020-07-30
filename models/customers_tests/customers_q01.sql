with customers as (
    select * from {{ ref('customers') }}
),

-- customer first_name is not null
final as (
    select
        customer_id,
        '{{ model.name }}' as test_name,
        first_name,
        first_name is not null as is_ok
    from customers

)

select * from final
{#
---

{{ test_not_null(
    ref('customers'),
    model_name = model.name,
    column_name='first_name'
) }} #}
