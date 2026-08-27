

with 
/* génrerer grace à generate a model dans le fichier yaml source grace au package codegen*/
source as (

    select * from {{ source('jaffle_shop', 'orders') }}

),

renamed as (

    select
    
        id as order_id,
        user_id as customer_id,
        order_date,
        status as order_status

    from source

)

select * from renamed