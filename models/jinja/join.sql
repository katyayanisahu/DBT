{{ config(materialized='table') }}
select {{ref('ORDER_NEW')}}.CUSTOMER_NAME, {{ref('ORDER_NEW')}}.CUSTOMER_ID
from {{ref('ORDER_NEW')}}
inner join {{ref('ORDER_TABLE')}}
on {{ref('ORDER_NEW')}}.CUSTOMER_NAME =
{{ref('ORDER_TABLE')}}.CUSTOMER_NAME
