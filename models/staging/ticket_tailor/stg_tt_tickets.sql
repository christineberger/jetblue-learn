with source as (

    select * from {{ source('ticket_tailor', 'issued_tickets') }}

),

renamed as (

    select
        -- keys
        id as ticket_id,
        ticket_type_id,
        event_id,
        order_id,

        -- descriptions
        object,
        barcode,
        barcode_url,
        
        -- status
        status,

        -- timestamps
        to_timestamp_ntz(created_at) as created_at,
        to_timestamp_ntz(updated_at) as updated_at,
        to_timestamp_ntz(voided_at) as voided_at,

        -- metadata
        _sdc_batched_at,
        _sdc_received_at,
        _sdc_sequence,
        _sdc_table_version

        -- ignored

    from source

)

select * from renamed