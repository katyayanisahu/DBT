{{config(materialized='incremental',unique_key ='ORDERDATE')}}
select
     ORDERDATE,
     CID,
     CUSTOMER_NAME
     
from  "VWE_S3"."PUBLIC"."CUSTOMER"

{% if is_incremental() %}
  -- this filter will only be applied on an incremental run
  where   ORDERDATE >= (select max( ORDERDATE ) from {{ this }})
{% endif %}

GROUP BY 3