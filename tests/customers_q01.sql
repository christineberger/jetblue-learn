select * from {{ ref('customers_q01') }} where not(is_ok)
