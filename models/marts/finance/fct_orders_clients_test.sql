with orders import as (
            select * from {{ ref('fct_orders') }}
)
select * from import