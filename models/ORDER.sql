select
from {{ source('jaffle_shop', 'ORDER_NEW') }}

left join {{ source('jaffle_shop', 'ORDER_TABLE') }} using (CUSTOMER_ID)
