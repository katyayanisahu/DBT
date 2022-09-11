{{ config(materialized='table') }}
with source_data as (
select *
from "VWE_S3"."PUBLIC"."ORDER_NEW"
inner join "VWE_S3"."PUBLIC"."ORDER_TABLE"
on "VWE_S3"."PUBLIC"."ORDER_NEW".CUSTOMER_NAME =
"VWE_S3"."PUBLIC"."ORDER_TABLE".CUSTOMER_NAME
)