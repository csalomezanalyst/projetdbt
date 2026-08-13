    select
    /* voir stg orders pour voir l'autogeneration*/
        id as customer_id,
        first_name,
        last_name

    from {{ source('jaffle_shop', 'customers') }}
