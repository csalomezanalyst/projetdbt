with a as (select *
from {{ ref('stg_stripe__payment') }})

select * from a
