{{config( materialized='table')}}

select CID,CUSTOMER_NAME,ORDERDATE
from {{ source('PUBLIC', 'CUSTOMER') }}   