with source as (

    select * from {{ source('ticket_tailor', 'orders') }}

),

renamed as (

    select
        -- keys
        id as order_id,
        txn_id as transaction_id,


        -- descriptions
        object,
        currency,
        round(subtotal / 100, 2) as subtotal,
        round(tax / 100) as tax,
        round(total / 100) as total,
        round(refund_amount / 100) as refund_amount,
        event_summary,
        line_items,

        -- status
        status,

        -- timestamps
        to_timestamp_ntz(created_at) as created_at,

        -- metadata
        _sdc_batched_at,
        _sdc_received_at,
        _sdc_sequence,
        _sdc_table_version

    from source

)

select * from renamed