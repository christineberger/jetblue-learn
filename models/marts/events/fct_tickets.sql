with tickets as (
    select * from {{ ref('stg_tt_tickets') }}
),

events as (
    select * from {{ ref('stg_tt_events') }}
),

orders as (
    select * from {{ ref('stg_tt_orders') }}
),

joined as (
    select 
        ticket_id,
        event_id,
        order_id,
        created_at,
        updated_at,
        events.name as event_name,
        events.timezone as event_timezone,
        orders.total as ticket_amount,
        case 
            when orders.status = 'completed' then false
            when orders.status = 'cancelled' then true
        end as is_refunded
    from tickets
    left join events using (event_id)
    left join orders using (order_id)
)

select * from joined