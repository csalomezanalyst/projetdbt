with  

   source as (

    select * from {{ source('jaffle_shop', 'customers') }}

    ),

transformed as ( 
    
    select
    /* voir stg orders pour voir l'autogeneration*/
        id as customer_id,
        first_name,
        last_name

    from source

)

select * from transformed
