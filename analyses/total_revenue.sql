WITH 

source as ( 

    select * from {{ ref('stg_stripe__payment') }}
),

SELECT 
sum(payment_amount) as total_revenue
from source
where payment_status='success'